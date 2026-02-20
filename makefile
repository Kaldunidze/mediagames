# Настройки
SRC_DIR := .
OUT_DIR := prod

# Поиск всех .typ файлов в текущей директории
SOURCES := $(wildcard $(SRC_DIR)/*.typ)
# Генерация имен выходных PDF в папке out
PDFS := $(patsubst $(SRC_DIR)/%.typ, $(OUT_DIR)/%.pdf, $(SOURCES))

# Главная цель
all: $(OUT_DIR) $(PDFS)

# Создание папки out, если её нет
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Правило компиляции: берет .typ и делает .pdf в out
$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.typ
	typst compile $< $@

# Очистка
clean:
	rm -rf $(OUT_DIR)

.PHONY: all clean
