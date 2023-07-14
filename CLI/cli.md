[[snippets]]
```bash
grep -R -A 20 /tmp/file.txt
# -A 10 show 10 lines after
# -B 20 show 20 lines before
```

## Rsync
```bash
rsync -havzP --stats user@remote.host:/path/to/copy /path/to/local/storage

# -h --human-readable        output numbers in a human-readable format
# -a, --archive               archive mode; same as -rlptgoD (no -H)
# -v, --verbose               increase verbosity
# -z, --compress              compress file data during the transfer
# -P                          same as --partial --progress

```
## Convert .HEIC to jpeg
```bash
# install imagemagick
brew install imagemagick

# convert a single image
magick convert foo.HEIC foo.jpg

# bulk convert multiple images
magick mogrify -monitor -format jpg *.HEIC
```
