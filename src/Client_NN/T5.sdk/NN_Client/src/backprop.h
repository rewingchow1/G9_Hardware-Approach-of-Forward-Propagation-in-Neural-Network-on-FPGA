#ifndef BACKPROP_H
#define BACKPROP_H

#include "layer.h"

#define SUCCESS_INIT 0
#define ERR_INIT 1

#define SUCCESS_DINIT 0
#define ERR_DINIT 1

#define SUCCESS_INIT_WEIGHTS 0
#define ERR_INIT_WEIGHTS 1

#define SUCCESS_UPDATE_WEIGHTS 0

#define SUCCESS_CREATE_ARCHITECTURE 0
#define ERR_CREATE_ARCHITECTURE 1


int init(float* fw, float* fb);
int dinit(void);

int create_architecture(float* fw, float* fb);
int initialize_weights(float* fw, float* fb);
void forward_prop(void);
void test_nn(int len);
void print_weights_bias(void);

//int initialize_dummy_weights(void);


#endif
