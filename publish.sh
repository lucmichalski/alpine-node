#/bin/sh

for tag in 10.23.0 10.23 10 slim-10.23.0 slim-10.23 slim-10; do
  git tag -f $tag
  git push -f origin $tag
  docker push mhart/alpine-node:$tag
done

git push
