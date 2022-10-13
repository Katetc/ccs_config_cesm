if (COMP_NAME STREQUAL gptl)
  string(APPEND CPPDEFS " -DHAVE_NANOTIME -DBIT64 -DHAVE_VPRINTF -DHAVE_BACKTRACE -DHAVE_SLASHPROC -DHAVE_COMM_F2C -DHAVE_TIMES -DHAVE_GETTIMEOFDAY")
endif()
set(NETCDF_PATH "$ENV{NETCDF}")
set(PIO_FILESYSTEM_HINTS "lustre")
set(PNETCDF_PATH "$ENV{PNETCDF}")
# If we want to use cray-libsci instead of mkl uncomment this line as well as the module in config_machines.xml
#string(REPLACE "-mkl=cluster" "" SLIBS "${SLIBS}")
string(APPEND CPPDEFS " -DNO_SHR_VMATH ")