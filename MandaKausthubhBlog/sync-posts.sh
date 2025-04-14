#!/bin/bash
rsync -av \
  --include="*.md" \
  --include="*/" \
  --include="*.png" \
  --include="*.jpg" \
  --include="*.pdf" \
  --include="*.jpeg" \
  --include="*.gif" \
  --include="*/" \
  --exclude="*" \
  ~/Documents/ResearchVault/posts/ ~/Ghost/Blog/MandaKausthubhBlog/content/posts/

hugo --minify --gc --minify --baseURL "https://mandakausthubh.github.io"
cd /Users/mandakausthubh/Ghost/Blog/MandaKausthubhBlog
cd public
git add .
git commit -m "Update notes $(date)"
git push
