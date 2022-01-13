#ifndef SOBEL_H_
#define SOBEL_H_

#define WIDTH 	1280
#define HEIGHT	720
typedef short int PIXEL;

void sobel(PIXEL* src, PIXEL* dst, int rows, int cols);

#endif
