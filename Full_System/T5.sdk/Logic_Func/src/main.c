#include<stdio.h>
#include"platform.h"
#include "xil_printf.h"

#include "backprop.h"
#include "layer.h"
#include "neuron.h"



layer *lay = NULL;
int num_layers; // number of layers
int *num_neurons;
float alpha = 0.15; //learning rate
float *cost;
float full_cost;
float **input;
float **desired_outputs;
int num_training_ex;
int n=1;
int test = 0;

int main()
{
    int i;

    xil_printf("Enter the number of Layers in Neural Network:\n\r\r");
    scanf("%d",&num_layers);
    xil_printf("%d\n",num_layers);


    num_neurons = (int*) malloc(num_layers * sizeof(int));
    //memset(num_neurons,0,num_layers *sizeof(int));

    // Get number of neurons per layer
    for(i=0;i<num_layers;i++)
    {
        xil_printf("Ent num of neus in lay[%d]: \n\r",i+1);
        scanf("%d",&num_neurons[i]);
    }

    print("\n\r");

    // Initialize the neural network module
    if(init()!= SUCCESS_INIT)
    {
        print("Error in Initialization...\n\r");
        exit(0);
    }

    print("Enter the number of training examples: \n\r");
    scanf("%d",&num_training_ex);
    print("\n\r");

    input = (float**) malloc(num_training_ex * sizeof(float*));
    for(i=0;i<num_training_ex;i++)
    {
        input[i] = (float*)malloc(num_neurons[0] * sizeof(float));
    }

    desired_outputs = (float**) malloc(num_training_ex* sizeof(float*));
    for(i=0;i<num_training_ex;i++)
    {
        desired_outputs[i] = (float*)malloc(num_neurons[num_layers-1] * sizeof(float));
    }

    cost = (float *) malloc(num_neurons[num_layers-1] * sizeof(float));
    //memset(cost,0,num_neurons[num_layers-1]*sizeof(float));

    // Get Training Examples
    get_inputs();

    // Get Output Labels
    get_desired_outputs();

    train_neural_net();
    test_nn();

    if(dinit()!= SUCCESS_DINIT)
    {
        print("Error in Dinitialization...\n\r");
    }

    return 0;
}


int init()
{
    if(create_architecture() != SUCCESS_CREATE_ARCHITECTURE)
    {
        print("Error in creating architecture...\n\r");
        return ERR_INIT;
    }

    print("Neural Network Created Successfully...\n\r\n\r");
    return SUCCESS_INIT;
}

//Get Inputs
void  get_inputs()
{
    int i,j, tmp;

        for(i=0;i<num_training_ex;i++)
        {
            xil_printf("Enter the Inputs for training example[%d]:\n\r",i);

            for(j=0;j<num_neurons[0];j++)
            {

                scanf("%d",&tmp);
                input[i][j] = (float)tmp;
                
            }
            print("\n\r");
        }
}

//Get Labels
void get_desired_outputs()
{
    int i,j, tmp;
    
    for(i=0;i<num_training_ex;i++)
    {
        for(j=0;j<num_neurons[num_layers-1];j++)
        {
            xil_printf("Enter the Desired Outputs (Labels) for training example[%d]: \n\r",i);
            scanf("%d",&tmp);
            desired_outputs[i][j] = (float)tmp;
            print("\n\r");
        }
    }
}

// Feed inputs to input layer
void feed_input(int i)
{
    int j;

    for(j=0;j<num_neurons[0];j++)
    {
        lay[0].neu[j].actv = input[i][j];
        //xil_printf("Input: %d\n\r",lay[0].neu[j].actv);
    }
}

// Create Neural Network Architecture
int create_architecture()
{
    int i=0,j=0;
    lay = (layer*) malloc(num_layers * sizeof(layer));

    for(i=0;i<num_layers;i++)
    {
        lay[i] = create_layer(num_neurons[i]);      
        lay[i].num_neu = num_neurons[i];
        xil_printf("Created Layer: %d\n\r", i+1);
        xil_printf("Number of Neurons in Layer %d: %d\n\r", i+1,lay[i].num_neu);

        for(j=0;j<num_neurons[i];j++)
        {
            if(i < (num_layers-1)) 
            {
                lay[i].neu[j] = create_neuron(num_neurons[i+1]);
            }

            xil_printf("Neuron %d in Layer %d created\n\r",j+1,i+1);
        }
        print("\n\r");
    }

    print("\n\r");

    // Initialize the weights
    if(initialize_weights() != SUCCESS_INIT_WEIGHTS)
    {
        print("Error Initilizing weights...\n\r");
        return ERR_CREATE_ARCHITECTURE;
    }

    return SUCCESS_CREATE_ARCHITECTURE;
}

int initialize_weights(void)
{
    int i,j,k;

    if(lay == NULL)
    {
        print("No layers in Neural Network...\n\r");
        return ERR_INIT_WEIGHTS;
    }

    print("Initializing weights...\n\r");

    for(i=0;i<num_layers-1;i++)
    {
        
        for(j=0;j<num_neurons[i];j++)
        {
            for(k=0;k<num_neurons[i+1];k++)
            {
                // Initialize Output Weights for each neuron
                lay[i].neu[j].out_weights[k] = ((double)rand())/((double)RAND_MAX*100);
                xil_printf("%d:w[%d][%d]: %d\n\r",k,i,j, lay[i].neu[j].out_weights[k]);
                lay[i].neu[j].dw[k] = 0.0;
            }

            if(i>0) 
            {
                lay[i].neu[j].bias = ((double)rand())/((double)RAND_MAX*100);
            }
        }
    }   
    print("\n\r");
    
    for (j=0; j<num_neurons[num_layers-1]; j++)
    {
        lay[num_layers-1].neu[j].bias = ((double)rand())/((double)RAND_MAX*100);
    }

    return SUCCESS_INIT_WEIGHTS;
}

// Train Neural Network
void train_neural_net(void)
{
    int i;
    int it=0;

    // Gradient Descent, epoch = 200000 originally
    for(it=0;it<2000;it++)
    {
        for(i=0;i<num_training_ex;i++)
        {
            feed_input(i);
            forward_prop();
            compute_cost(i);
            back_prop(i);
            update_weights();
        }
    }
}



void update_weights(void)
{
    int i,j,k;

    for(i=0;i<num_layers-1;i++)
    {
        for(j=0;j<num_neurons[i];j++)
        {
            for(k=0;k<num_neurons[i+1];k++)
            {
                // Update Weights
                lay[i].neu[j].out_weights[k] = (lay[i].neu[j].out_weights[k]) - (alpha * lay[i].neu[j].dw[k]);
            }
            
            // Update Bias
            lay[i].neu[j].bias = lay[i].neu[j].bias - (alpha * lay[i].neu[j].dbias);
        }
    }   
}

void forward_prop(void)
{
    int i,j,k;

    for(i=1;i<num_layers;i++)
    {   
        for(j=0;j<num_neurons[i];j++)
        {
            lay[i].neu[j].z = lay[i].neu[j].bias;

            for(k=0;k<num_neurons[i-1];k++)
            {
                lay[i].neu[j].z  = lay[i].neu[j].z + ((lay[i-1].neu[k].out_weights[j])* (lay[i-1].neu[k].actv));
            }

            // Relu Activation Function for Hidden Layers
            if(i < num_layers-1)
            {
                if((lay[i].neu[j].z) < 0)
                {
                    lay[i].neu[j].actv = 0;
                }

                else
                {
                    lay[i].neu[j].actv = lay[i].neu[j].z;
                }
            }
            
            // Sigmoid Activation function for Output Layer
            else
            {
                lay[i].neu[j].actv = 1/(1+exp(-lay[i].neu[j].z));
                if (test)
                {
                	xil_printf("Output: %d\n\r", (int)round(lay[i].neu[j].actv));
                	print("\n\r");
                }

            }
        }
    }
}

// Compute Total Cost
void compute_cost(int i)
{
    int j;
    float tmpcost=0;
    float tcost=0;

    for(j=0;j<num_neurons[num_layers-1];j++)
    {
        tmpcost = desired_outputs[i][j] - lay[num_layers-1].neu[j].actv;
        cost[j] = (tmpcost * tmpcost)/2;
        tcost = tcost + cost[j];
    }   

    full_cost = (full_cost + tcost)/n;
    n++;
//    xil_printf("Full Cost: %d\n\r",full_cost);
}

// Back Propogate Error
void back_prop(int p)
{
    int i,j,k;

    // Output Layer
    for(j=0;j<num_neurons[num_layers-1];j++)
    {           
        lay[num_layers-1].neu[j].dz = (lay[num_layers-1].neu[j].actv - desired_outputs[p][j]) * (lay[num_layers-1].neu[j].actv) * (1- lay[num_layers-1].neu[j].actv);

        for(k=0;k<num_neurons[num_layers-2];k++)
        {   
            lay[num_layers-2].neu[k].dw[j] = (lay[num_layers-1].neu[j].dz * lay[num_layers-2].neu[k].actv);
            lay[num_layers-2].neu[k].dactv = lay[num_layers-2].neu[k].out_weights[j] * lay[num_layers-1].neu[j].dz;
        }
            
        lay[num_layers-1].neu[j].dbias = lay[num_layers-1].neu[j].dz;           
    }

    // Hidden Layers
    for(i=num_layers-2;i>0;i--)
    {
        for(j=0;j<num_neurons[i];j++)
        {
            if(lay[i].neu[j].z >= 0)
            {
                lay[i].neu[j].dz = lay[i].neu[j].dactv;
            }
            else
            {
                lay[i].neu[j].dz = 0;
            }

            for(k=0;k<num_neurons[i-1];k++)
            {
                lay[i-1].neu[k].dw[j] = lay[i].neu[j].dz * lay[i-1].neu[k].actv;    
                
                if(i>1)
                {
                    lay[i-1].neu[k].dactv = lay[i-1].neu[k].out_weights[j] * lay[i].neu[j].dz;
                }
            }

            lay[i].neu[j].dbias = lay[i].neu[j].dz;
        }
    }
}

// Test the trained network
void test_nn(void) 
{
	test = 1;
    int i, tmp;
    while(1)
    {
        print("Enter input to test:\n\r");

        for(i=0;i<num_neurons[0];i++)
        {
            scanf("%d",&tmp);
            lay[0].neu[i].actv = (float)tmp;
        }
        forward_prop();
    }
}

// TODO: Add different Activation functions
//void activation_functions()

int dinit(void)
{


    return SUCCESS_DINIT;
}

