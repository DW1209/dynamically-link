CXX = g++
CFLAGS = -Wall

logger: main.cpp logger.so
	$(CXX) $(CFLAGS) -o $@ $<

logger.so: logger.cpp
	$(CXX) $(CFLAGS) -o $@ -shared -fPIC $< -ldl

clean:
	rm -f logger logger.so
