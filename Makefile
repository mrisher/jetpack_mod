JSON_FILES := $(shell find -name *.json)
TARGETS := daddy_behavior_pack daddy_resource_pack
GOOGLE_DRIVE_FOLDER := /mnt/chromeos/GoogleDrive/MyDrive/Minecraft/

%.mcpack: $(JSON_FILES)
	$(shell ./bumpVersion.sh $(basename $@)/manifest.json)
	zip -FSr $@ $(basename $@)/

all: $(addsuffix .mcpack, $(TARGETS))
	zip -FSr daddy_pack.mcaddon $^
	cp $^ $(GOOGLE_DRIVE_FOLDER)
	cp daddy_pack.mcaddon $(GOOGLE_DRIVE_FOLDER)	
