FORBIDDEN=images/
SUBDIRS := $(filter-out $(FORBIDDEN), $(sort $(dir $(wildcard **/*/))))
TARGETS=generate

all: $(SUBDIRS)
clean: $(SUBDIRS)
$(TARGETS): $(SUBDIRS)

$(SUBDIRS):
	ls $(SUBDIRS)
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: build clean release all $(SUBDIRS) $(TARGETS)
