# compiler
F90      = ftn

# linker
LD       = $(F90)

# global compilation flags
FFLAGS   = -fno-fast-math # enforce IEEE behaviour
FFLAGS  += -ffree-form # specify free-format source
FFLAGS  += -ffree-line-length-none # specify infinitely long lines
FFLAGS  += -fno-backslash # treat backslash as normal character
FFLAGS  += -fimplicit-none # no implicit typing is allowed
FFLAGS  += -Waliasing # warn about aliasing
FFLAGS  += -Wampersand # warn about missing ampersand
FFLAGS  += -Wline-truncation # warn about line truncation
FFLAGS  += -Wsurprising # warn about suspicious constructs
FFLAGS  += -Wtabs # warn about tabs
FFLAGS  += -Wunderflow # warn about underflow in numerical constants
#FFLAGS  += -fconvert=big-endian # convert unformatted I/O byte order to big-endian
FFLAGS  += -frecord-marker=4 # length of record marker in bytes (for unformatted I/O)
FFLAGS  += -fopenmp # compile with OpenMP runtime libraries

# verbose compilation flags
VFLAGS   = -v # displays invocations of compiler, assembler and linker
VFLAGS  += -Wall # enable commonly used warning options
VFLAGS  += -Wconversion # warn about implicit conversion of types

# force preprocessing flags
PFLAGS   = -cpp # perform preprocessing for all source files

# optimization flags (FOPT0=none, FOPT1=strong, FOPT2=strongest)
FOPT0    = -O0 # inhibit any optimizations

FOPT1    = -O3 # aggressive global optimization
FOPT1   += -ftree-vectorize #
#FOPT1   += -ftree-loop-linear #
FOPT1   += -funroll-loops #

FOPT2    = $(FOPT1)

# debugging flags
FDBG     = -O0 # inhibit any optimizations
FDBG    += -g # generate information for debugger (disable optimizations)
FDBG    += -fbacktrace # provide backtrace of error upon crash
FDBG    += -fdump-core # dump core file on crash
FDBG    += -ffpe-trap=invalid,zero,overflow # floating point exceptions (invalid,zero,underflow)
FDBG    += -fbounds-check # check array bounds
FDBG    += -fcheck-array-temporaries # warn about array temporaries (at runtime)
FDBG    += -finit-integer=-99999999 # initialize all reals with NaN
FDBG    += -finit-real=nan # initialize all reals with NaN

# global linking flags
LFLAGS   =
#LFLAGS  += -fconvert=big-endian -frecord-marker=4

# global libraries and includes
LIB      =

INC      = -I.
INC     += -I$(ROOT)/$(SRCDIR)
INC     += -I$(MPICH_DIR)/include

# optimized flags, libraries and includes
OPTL     =
OPTI     =

# debugging flags, libraries and includes
DBGL     =
DBGI     =

# MPI library
MPIL     =
MPII     = -D__MPICH2

# Grib1 library
GRIBDWDL =
GRIBDWDI =

# GRIB_API library
GRIB_APIL=
GRIB_APII=

# NetCDF library
NETCDFL  =
NETCDFI  =

# Synsat library
RTTOV7L  =
RTTOV7I  =
RTTOV9L  =
RTTOV9I  =

