#!/bin/bash

cleanThisMessForReadme () {

	FILENAME=$1

	{ rm $FILENAME && awk '{gsub("\\*/", "\n```swift\n", $0); print}' > $FILENAME; } < $FILENAME
	{ rm $FILENAME && awk '{gsub("\\*//\\*:", "", $0); print}' > $FILENAME; } < $FILENAME
	{ rm $FILENAME && awk '{gsub("/\\*:", "```\n", $0); print}' > $FILENAME; } < $FILENAME
	{ rm $FILENAME && awk '{gsub("//\\*:", "", $0); print}' > $FILENAME; } < $FILENAME
	{ rm $FILENAME && awk '{gsub("//:", "", $0); print}' > $FILENAME; } < $FILENAME
	{ rm $FILENAME && awk 'NR>1{print buf}{buf = $0}' > $FILENAME; } < $FILENAME
}

cat source/source/* > ./source.swift

cp ./source.swift ./Playground.playground/Pages/Page.xcplaygroundpage/Contents.swift

cat source/header.swift source/*/* source/footer.swift > ./contents.swift

cleanThisMessForReadme ./contents.swift

cp ./contents.swift ./README.md

rm ./source.swift
rm ./contents.swift
