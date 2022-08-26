dos2unix -q SRC/*
dos2unix -q EXAMPLE/*
dos2unix -q TEST/*

sed -i 's/[[:blank:]]*$//' SRC/*.*
sed -i 's/[[:blank:]]*$//' EXAMPLE/*.*
sed -i 's/[[:blank:]]*$//' TEST/*.*

./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_ddefs.h precision=DOUBLE
./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_zdefs.h precision=DCOMPLEX
./extract -b SRC/pxgssvx.c.base -o ../output/SRC/pzgssvx.c precision=DCOMPLEX
./extract -b SRC/pxdistribute_onesided.c.base -o ../output/SRC/pddistribute_onesided.c precision=DOUBLE
./extract -b SRC/pxdistribute_onesided.c.base -o ../output/SRC/pzdistribute_onesided.c precision=DCOMPLEX
./extract -b SRC/pxgstrs_onesided.c.base -o ../output/SRC/pdgstrs_onesided.c precision=DOUBLE
./extract -b SRC/pxgstrs_onesided.c.base -o ../output/SRC/pzgstrs_onesided.c precision=DCOMPLEX
./extract -b SRC/pxgstrs_lsum_onesided.c.base -o ../output/SRC/pzgstrs_lsum_onesided.c precision=DCOMPLEX
./extract -b SRC/pxgstrs_lsum_onesided.c.base -o ../output/SRC/pdgstrs_lsum_onesided.c precision=DOUBLE








#./extract -b SRC/pxgstrs_lsum.c.base -o ../output/SRC/pzgstrs_lsum.c precision=DCOMPLEX
#./extract -b SRC/pxgstrs_lsum_cuda.cu.base -o ../output/SRC/pzgstrs_lsum_cuda.cu precision=DCOMPLEX
#./extract -b SRC/pxdistribute.c.base -o ../output/SRC/pzdistribute.c precision=DCOMPLEX
#./extract -b SRC/xdistribute.c.base -o ../output/SRC/zdistribute.c precision=DCOMPLEX
#./extract -b SRC/pxgstrs.c.base -o ../output/SRC/pzgstrs.c precision=DCOMPLEX
#./extract -b SRC/pxsymbfact_distdata.c.base -o ../output/SRC/pzsymbfact_distdata.c precision=DCOMPLEX
#./extract -b SRC/pxutil.c.base -o ../output/SRC/pzutil.c precision=DCOMPLEX
#./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_zdefs.h precision=DCOMPLEX
#./extract -b SRC/pxgssvx.c.base -o ../output/SRC/pzgssvx.c precision=DCOMPLEX
#./extract -b SRC/xSchCompUdt-2Ddynamic.c.base -o ../output/SRC/zSchCompUdt-2Ddynamic.c precision=DCOMPLEX
#./extract -b SRC/xlook_ahead_update.c.base -o ../output/SRC/zlook_ahead_update.c precision=DCOMPLEX
#./extract -b SRC/pxgstrf.c.base -o ../output/SRC/pzgstrf.c precision=DCOMPLEX
#./extract -b SRC/xutil_dist.c.base -o ../output/SRC/zutil_dist.c precision=DCOMPLEX
#./extract -b SRC/xmemory_dist.c.base -o ../output/SRC/zmemory_dist.c precision=DCOMPLEX
#./extract -b SRC/pxgssvx_ABglobal.c.base -o ../output/SRC/pzgssvx_ABglobal.c precision=DCOMPLEX
#
#
#./extract -b EXAMPLE/pxdrive.c.base -o ../output/EXAMPLE/pzdrive.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive_ABglobal.c.base -o ../output/EXAMPLE/pzdrive_ABglobal.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive1.c.base -o ../output/EXAMPLE/pzdrive1.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive1_ABglobal.c.base -o ../output/EXAMPLE/pzdrive1_ABglobal.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive2.c.base -o ../output/EXAMPLE/pzdrive2.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive2_ABglobal.c.base -o ../output/EXAMPLE/pzdrive2_ABglobal.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive3.c.base -o ../output/EXAMPLE/pzdrive3.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive3_ABglobal.c.base -o ../output/EXAMPLE/pzdrive3_ABglobal.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive4.c.base -o ../output/EXAMPLE/pzdrive4.c precision=DCOMPLEX
#./extract -b EXAMPLE/pxdrive4_ABglobal.c.base -o ../output/EXAMPLE/pzdrive4_ABglobal.c precision=DCOMPLEX
#./extract -b EXAMPLE/xcreate_matrix_perturbed.c.base -o ../output/EXAMPLE/zcreate_matrix_perturbed.c precision=DCOMPLEX
#./extract -b EXAMPLE/xcreate_matrix.c.base -o ../output/EXAMPLE/zcreate_matrix.c precision=DCOMPLEX
#./extract -b EXAMPLE/xreadhb.c.base -o ../output/EXAMPLE/zreadhb.c precision=DCOMPLEX
#./extract -b EXAMPLE/xreadtriple.c.base -o ../output/EXAMPLE/zreadtriple.c precision=DCOMPLEX
#
#./extract -b TEST/pxtest.c.base -o ../output/TEST/pztest.c precision=DCOMPLEX
