build:
	hugo -D -E -F

run: build
	hugo server -D -E -F --disableFastRender

publish: build
	( cd public && git commit -a -m "$$(date '+%Y-%m-%d %H:%M:%S')" && git push ) || true
