#include "xil_types.h"

#define image_size 28*28
#define header_size_label 8
#define header_size_image 16
#define num_of_train_images 60000
#define num_of_test_images 10000
#define train_image_filesize (image_size * num_of_train_images) + header_size_image
#define train_label_filesize num_of_train_images + header_size_label
#define test_image_filesize (image_size * num_of_test_images)
#define test_label_filesize num_of_test_images

float* img_test_data, * lbl_test_data;

/// Fixed-point Format: 4.12 (16-bit)
#define FIXED_POINT_FRACTIONAL_BITS 12



union ByteFloat {
    float f;
    unsigned char b[4];
};



/// Converts 4.12 format to unsigned 8-bit integer
float fixed_to_float(u16 input);

/// Converts unsigned 8-bit integer to 4.12 format
u16 float_to_fixed(float input);


