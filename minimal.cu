#include "a_cpu_class.hh"
#include "a_mixed_gpu_and_cpu_class.hh"


int main(int argc, char** argv) {

  cudaDeviceSynchronize();
  a_cpu_class cpu_obj;
  a_mixed_gpu_and_cpu_class mixed_obj;

  cpu_obj.set_member(10);
  mixed_obj.a_host_function();

  return 0;

}
