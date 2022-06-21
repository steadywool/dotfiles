#!/bin/bash

NOTE=$HOME/Documents/Notes

if [[ ! -d $NOTE ]]; then
    mkdir -p $NOTE
fi

note_filename=$NOTE/$(date +%Y%m%d)_note.md

if [[ ! -f $note_filename ]]; then
    echo "# Note for $(date +%Y-%m-%d)" > $note_filename
fi

nvim -c "norm Go" \
    -c "startinsert" $note_filename
