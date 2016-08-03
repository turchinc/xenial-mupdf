# xenial-mupdf

## Usage
`docker run --rm -v "$(pwd)":/pdf -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY turchinc/xenial-mupdf mupdf /pdf/file_to_open.pdf`

You can also add the following to your `.bash_profile` (or similar) to allow you to quickly run the docker container using `mupdf file_to_open.pdf`.

```
mupdf(){
	docker run --rm \
		-v "$(pwd)":/pdf \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
		turchinc/xenial-mupdf mupdf /pdf/"$@"
}
```  
