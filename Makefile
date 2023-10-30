build:
	hugo -D -E -F

run: build
	hugo server -D -E -F --disableFastRender
