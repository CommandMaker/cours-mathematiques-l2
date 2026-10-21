CC := typst
CC_FLAGS := compile


OUT_DIR := output
SRCs := $(wildcard *.typ)
OUTs := $(patsubst %.typ,$(OUT_DIR)/%.pdf,$(SRCs))

.PHONY: all
all: $(OUTs)

$(OUT_DIR)/%.pdf: %.typ
	@mkdir -p $(OUT_DIR)
	$(CC) $(CC_FLAGS) $< $@

.PHONY: clean
clean:
	rm -rf $(OUT_DIR)
