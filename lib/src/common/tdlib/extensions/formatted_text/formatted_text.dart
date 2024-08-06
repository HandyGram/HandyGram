import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;

import 'entity.dart';
export 'entity.dart';

extension FormattedTextSpans on td.FormattedText {
  TextSpan toSpan({required FormattedTextStyle style}) {
    if (text.isEmpty) {
      return const TextSpan();
    }

    List<FormattedTextEntity> entities = [
      FormattedTextEntity(
        entities: [],
        text: text.codeUnits,
        position: 0,
      ),
    ];

    // Convert TDLib's entity pointers to real text entities.
    // Sometimes I wanna kms thx to Durov 😊
    for (final tdEntity in this.entities) {
      // Entity which starts exactly at this tdEntity position, or before it.
      FormattedTextEntity closestEntity = entities.fold(
        entities.first,
        (saved, next) =>
            (saved.position < next.position && next.position <= tdEntity.offset)
                ? next
                : saved,
      );
      int closestEntityOffset = entities.indexOf(closestEntity);

      // Entity is after the found one, cut it in 2 parts.
      if (tdEntity.offset != closestEntity.position) {
        entities.insert(
          closestEntityOffset,
          closestEntity.copyWith(
            text: closestEntity.text
                .sublist(0, tdEntity.offset - closestEntity.position),
          ),
        );
        closestEntityOffset += 1;
        closestEntity = closestEntity.copyWith(
          position: tdEntity.offset,
          text: closestEntity.text
              .sublist(tdEntity.offset - closestEntity.position),
        );
        entities[closestEntityOffset] = closestEntity;
      }

      if (closestEntity.text.length > tdEntity.length) {
        // Split this entity into two ones if needed
        entities.insert(
          closestEntityOffset + 1,
          closestEntity.copyWith(
            position: closestEntity.position + tdEntity.length,
            text: closestEntity.text.sublist(tdEntity.length),
          ),
        );
        closestEntity = closestEntity.copyWith(
          text: closestEntity.text.sublist(0, tdEntity.length),
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      } else if (closestEntity.text.length < tdEntity.length) {
        // Use neighbor entity if required
        final neighborEntity = entities[closestEntityOffset + 1];
        entities[closestEntityOffset + 1] = neighborEntity.copyWith(
          text: neighborEntity.text.sublist(
            0,
            min(
              tdEntity.length,
              neighborEntity.text.length,
            ),
          ),
          entities: [
            ...neighborEntity.entities,
            tdEntity.type,
          ],
        );
        // After neighbor entity
        if (tdEntity.length < neighborEntity.text.length) {
          entities.insert(
            closestEntityOffset + 2,
            neighborEntity.copyWith(
              position: neighborEntity.position + tdEntity.length,
              text: neighborEntity.text.sublist(tdEntity.length),
            ),
          );
        }
        // Only update the type of target entity
        closestEntity = closestEntity.copyWith(
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      } else {
        // Simply add new entity type
        closestEntity = closestEntity.copyWith(
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      }
      entities[closestEntityOffset] = closestEntity;
    }

    return TextSpan(
      children: [
        for (final entity in entities) ...entity.getSpan(style: style),
      ],
    );
  }
}
