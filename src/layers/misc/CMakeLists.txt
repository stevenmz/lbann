# Add the source files for this directory
set_full_path(THIS_DIR_SOURCES
  argmax.cpp
  argmin.cpp
  channelwise_mean.cpp
  channelwise_softmax.cpp
  covariance.cpp
  dft_abs_builder.cpp
  dist_embedding.cpp
  mini_batch_index.cpp
  mini_batch_size.cpp
  one_hot.cpp
  variance.cpp
  )

if (LBANN_HAS_FFTW)
  list(APPEND THIS_DIR_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/dft_abs.cpp")
endif ()

if (LBANN_HAS_CUDA)
  # Add the CUDA source files for this directory
  set_full_path(THIS_DIR_CU_SOURCES
    covariance.cu
    dist_embedding.cu
    variance.cu
    channelwise_mean.cu
    channelwise_softmax.cu
    one_hot.cu
    )
  if (LBANN_HAS_FFTW)
    list(APPEND THIS_DIR_CU_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/dft_abs.cu")
  endif ()
endif ()

# Propagate the files up the tree
set(SOURCES "${SOURCES}" "${THIS_DIR_SOURCES}" PARENT_SCOPE)
set(CUDA_SOURCES "${CUDA_SOURCES}" "${THIS_DIR_CU_SOURCES}" PARENT_SCOPE)
