JSON_FILES := $(shell find -name *.json)
TARGETS := daddy_behavior_pack daddy_resource_pack

%.mcpack: $(JSON_FILES)
	zip -FSr $@ $(basename $@)/

all: $(addsuffix .mcpack, $(TARGETS))
	
