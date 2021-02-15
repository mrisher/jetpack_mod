JSON_FILES := $(shell find -name *.json)
TARGETS := daddy_behavior_pack daddy_resource_pack
GOOGLE_DRIVE_FOLDER := /mnt/chromeos/GoogleDrive/MyDrive/Minecraft/

%.mcpack: $(JSON_FILES)
	zip -FSr $@ $(basename $@)/
	cp *.mcpack $(GOOGLE_DRIVE_FOLDER)

all: $(addsuffix .mcpack, $(TARGETS))
	
