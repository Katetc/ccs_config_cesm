set(NETCDF_FORTRAN_PATH "$ENV{NETCDF_FORTRAN_PATH}")
set(NETCDF_C_PATH "$ENV{NETCDF_C_PATH}")
set(SUPPORTS_CXX "TRUE")
if (COMP_NAME STREQUAL gptl)
  string(APPEND CPPDEFS " -DHAVE_VPRINTF -DHAVE_TIMES -DHAVE_GETTIMEOFDAY -DHAVE_BACKTRACE")
endif()
string(APPEND SLIBS " -L$ENV{NETCDF_FORTRAN_PATH}/lib/ -lnetcdff -L$ENV{NETCDF_C_PATH}/lib/ -lnetcdf -lcurl -llapack -lblas")
if (DEBUG)
  string(APPEND FFLAGS " -g -fbacktrace -fbounds-check -ffpe-trap=invalid,zero,overflow")
endif()
if (NOT DEBUG)
  string(APPEND FFLAGS " -fno-unsafe-math-optimizations")
endif()
if (MPILIB STREQUAL mpi-serial)
  set(SCC "gcc")
endif()
if (MPILIB STREQUAL mpi-serial)
  set(SFC "gfortran")
endif()
string(APPEND CXX_LIBS " -lstdc++")
