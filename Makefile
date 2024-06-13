VOL_SIZE=10M
VOL_NAME=Untitled

mac-only:
	@if [[ "$$OSTYPE" =~ ^darwin ]]; then true; else false; fi

%.dmg: mac-only
	hdiutil create -size $(VOL_SIZE) -fs HFS+ -volname "$*" $@

%.sparsebundle: mac-only
	hdiutil create -size $(VOL_SIZE) -type SPARSEBUNDLE -fs HFS+ -volname "$*" $@
