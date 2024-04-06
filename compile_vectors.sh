#!/bin/bash
rm -f assets/vectors/compiled/* || exit 1
flutter pub get || exit 1
dart run vector_graphics_compiler \
    --input-dir assets/vectors/source \
    --out-dir assets/vectors/compiled \
    --optimize-masks \
    --optimize-clips \
    --optimize-overdraw \
    --tessellate || exit 1
cd assets/vectors/compiled
for vec in *.vec; do mv "$vec" "${vec%.svg.vec}.vec"; done
cd ../../..
echo "Done. Compiled size:$(du -khd0 "assets/vectors/compiled" | cut -d "$(printf '\t')" -f 1)"
