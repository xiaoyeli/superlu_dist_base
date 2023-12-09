dos2unix -q SRC/*
dos2unix -q EXAMPLE/*
dos2unix -q TEST/*

sed -i 's/[[:blank:]]*$//' SRC/*.*
sed -i 's/[[:blank:]]*$//' EXAMPLE/*.*
sed -i 's/[[:blank:]]*$//' TEST/*.*

./extract -b SRC/pxgstrs_lsum.c.base -o ../output/SRC/pdgstrs_lsum.c precision=DOUBLE
./extract -b SRC/pxdistribute.c.base -o ../output/SRC/pddistribute.c precision=DOUBLE
./extract -b SRC/pxdistribute3d.c.base -o ../output/SRC/pddistribute3d.c precision=DOUBLE
./extract -b SRC/x3DPartition.c.base -o ../output/SRC/d3DPartition.c precision=DOUBLE
./extract -b SRC/xdistribute.c.base -o ../output/SRC/ddistribute.c precision=DOUBLE
./extract -b SRC/pxgstrs.c.base -o ../output/SRC/pdgstrs.c precision=DOUBLE
./extract -b SRC/pxgstrs3d.c.base -o ../output/SRC/pdgstrs3d.c precision=DOUBLE
./extract -b SRC/pxgstrs_Bglobal.c.base -o ../output/SRC/pdgstrs_Bglobal.c precision=DOUBLE
./extract -b SRC/pxgstrs1.c.base -o ../output/SRC/pdgstrs1.c precision=DOUBLE
./extract -b SRC/pxsymbfact_distdata.c.base -o ../output/SRC/pdsymbfact_distdata.c precision=DOUBLE
./extract -b SRC/pxutil.c.base -o ../output/SRC/pdutil.c precision=DOUBLE
./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_ddefs.h precision=DOUBLE
./extract -b SRC/pxgssvx.c.base -o ../output/SRC/pdgssvx.c precision=DOUBLE
./extract -b SRC/xSchCompUdt-2Ddynamic.c.base -o ../output/SRC/dSchCompUdt-2Ddynamic.c precision=DOUBLE
./extract -b SRC/xlook_ahead_update.c.base -o ../output/SRC/dlook_ahead_update.c precision=DOUBLE
./extract -b SRC/pxgstrf.c.base -o ../output/SRC/pdgstrf.c precision=DOUBLE
./extract -b SRC/pxgstrf2.c.base -o ../output/SRC/pdgstrf2.c precision=DOUBLE
./extract -b SRC/pxgstrf3d.c.base -o ../output/SRC/pdgstrf3d.c precision=DOUBLE
./extract -b SRC/xutil_dist.c.base -o ../output/SRC/dutil_dist.c precision=DOUBLE
./extract -b SRC/xmemory_dist.c.base -o ../output/SRC/dmemory_dist.c precision=DOUBLE
./extract -b SRC/pxgssvx_ABglobal.c.base -o ../output/SRC/pdgssvx_ABglobal.c precision=DOUBLE
./extract -b SRC/xtreeFactorization.c.base -o ../output/SRC/dtreeFactorization.c precision=DOUBLE
./extract -b SRC/xtreeFactorizationGPU.c.base -o ../output/SRC/dtreeFactorizationGPU.c precision=DOUBLE
./extract -b SRC/xtrfAux.c.base -o ../output/SRC/dtrfAux.c precision=DOUBLE
./extract -b SRC/xtrfCommWrapper.c.base -o ../output/SRC/dtrfCommWrapper.c precision=DOUBLE
./extract -b SRC/pxGetDiagU.c.base -o ../output/SRC/pdGetDiagU.c precision=DOUBLE
./extract -b SRC/pxgsmv.c.base -o ../output/SRC/pdgsmv.c precision=DOUBLE
./extract -b SRC/pxgsmv_AXglobal.c.base -o ../output/SRC/pdgsmv_AXglobal.c precision=DOUBLE
./extract -b SRC/pxgsrfs.c.base -o ../output/SRC/pdgsrfs.c precision=DOUBLE
./extract -b SRC/pxgsrfs_ABXglobal.c.base -o ../output/SRC/pdgsrfs_ABXglobal.c precision=DOUBLE
./extract -b SRC/xcommunication_aux.c.base -o ../output/SRC/dcommunication_aux.c precision=DOUBLE
./extract -b SRC/xstatic_schedule.c.base -o ../output/SRC/dstatic_schedule.c precision=DOUBLE
./extract -b SRC/pxlangs.c.base -o ../output/SRC/pdlangs.c precision=DOUBLE
./extract -b SRC/pxlaqgs.c.base -o ../output/SRC/pdlaqgs.c precision=DOUBLE
./extract -b SRC/xssvx3dAux.c.base -o ../output/SRC/dssvx3dAux.c precision=DOUBLE
./extract -b SRC/xsuperlu_gpu.cu.base -o ../output/SRC/dsuperlu_gpu.cu precision=DOUBLE

./extract -b EXAMPLE/pxdrive.c.base -o ../output/EXAMPLE/pddrive.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive_ABglobal.c.base -o ../output/EXAMPLE/pddrive_ABglobal.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive1.c.base -o ../output/EXAMPLE/pddrive1.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive1_ABglobal.c.base -o ../output/EXAMPLE/pddrive1_ABglobal.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive2.c.base -o ../output/EXAMPLE/pddrive2.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive2_ABglobal.c.base -o ../output/EXAMPLE/pddrive2_ABglobal.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive3.c.base -o ../output/EXAMPLE/pddrive3.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive3_ABglobal.c.base -o ../output/EXAMPLE/pddrive3_ABglobal.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive4.c.base -o ../output/EXAMPLE/pddrive4.c precision=DOUBLE
./extract -b EXAMPLE/pxdrive4_ABglobal.c.base -o ../output/EXAMPLE/pddrive4_ABglobal.c precision=DOUBLE
./extract -b EXAMPLE/xcreate_matrix_perturbed.c.base -o ../output/EXAMPLE/dcreate_matrix_perturbed.c precision=DOUBLE
./extract -b EXAMPLE/xcreate_matrix.c.base -o ../output/EXAMPLE/dcreate_matrix.c precision=DOUBLE
./extract -b EXAMPLE/xreadhb.c.base -o ../output/EXAMPLE/dreadhb.c precision=DOUBLE
./extract -b EXAMPLE/xreadtriple.c.base -o ../output/EXAMPLE/dreadtriple.c precision=DOUBLE



./extract -b TEST/pxtest.c.base -o ../output/TEST/pdtest.c precision=DOUBLE








./extract -b SRC/pxgstrs_lsum.c.base -o ../output/SRC/pzgstrs_lsum.c precision=DCOMPLEX
./extract -b SRC/pxdistribute.c.base -o ../output/SRC/pzdistribute.c precision=DCOMPLEX
./extract -b SRC/xdistribute.c.base -o ../output/SRC/zdistribute.c precision=DCOMPLEX
./extract -b SRC/pxgstrs.c.base -o ../output/SRC/pzgstrs.c precision=DCOMPLEX
./extract -b SRC/pxsymbfact_distdata.c.base -o ../output/SRC/pzsymbfact_distdata.c precision=DCOMPLEX
./extract -b SRC/pxutil.c.base -o ../output/SRC/pzutil.c precision=DCOMPLEX
./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_zdefs.h precision=DCOMPLEX
./extract -b SRC/pxgssvx.c.base -o ../output/SRC/pzgssvx.c precision=DCOMPLEX
./extract -b SRC/xSchCompUdt-2Ddynamic.c.base -o ../output/SRC/zSchCompUdt-2Ddynamic.c precision=DCOMPLEX
./extract -b SRC/xlook_ahead_update.c.base -o ../output/SRC/zlook_ahead_update.c precision=DCOMPLEX
./extract -b SRC/pxgstrf.c.base -o ../output/SRC/pzgstrf.c precision=DCOMPLEX
./extract -b SRC/xutil_dist.c.base -o ../output/SRC/zutil_dist.c precision=DCOMPLEX
./extract -b SRC/xmemory_dist.c.base -o ../output/SRC/zmemory_dist.c precision=DCOMPLEX
./extract -b SRC/pxgssvx_ABglobal.c.base -o ../output/SRC/pzgssvx_ABglobal.c precision=DCOMPLEX
./extract -b SRC/xsuperlu_gpu.cu.base -o ../output/SRC/zsuperlu_gpu.cu precision=DCOMPLEX

./extract -b EXAMPLE/pxdrive.c.base -o ../output/EXAMPLE/pzdrive.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive_ABglobal.c.base -o ../output/EXAMPLE/pzdrive_ABglobal.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive1.c.base -o ../output/EXAMPLE/pzdrive1.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive1_ABglobal.c.base -o ../output/EXAMPLE/pzdrive1_ABglobal.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive2.c.base -o ../output/EXAMPLE/pzdrive2.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive2_ABglobal.c.base -o ../output/EXAMPLE/pzdrive2_ABglobal.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive3.c.base -o ../output/EXAMPLE/pzdrive3.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive3_ABglobal.c.base -o ../output/EXAMPLE/pzdrive3_ABglobal.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive4.c.base -o ../output/EXAMPLE/pzdrive4.c precision=DCOMPLEX
./extract -b EXAMPLE/pxdrive4_ABglobal.c.base -o ../output/EXAMPLE/pzdrive4_ABglobal.c precision=DCOMPLEX
./extract -b EXAMPLE/xcreate_matrix_perturbed.c.base -o ../output/EXAMPLE/zcreate_matrix_perturbed.c precision=DCOMPLEX
./extract -b EXAMPLE/xcreate_matrix.c.base -o ../output/EXAMPLE/zcreate_matrix.c precision=DCOMPLEX
./extract -b EXAMPLE/xreadhb.c.base -o ../output/EXAMPLE/zreadhb.c precision=DCOMPLEX
./extract -b EXAMPLE/xreadtriple.c.base -o ../output/EXAMPLE/zreadtriple.c precision=DCOMPLEX

./extract -b TEST/pxtest.c.base -o ../output/TEST/pztest.c precision=DCOMPLEX

./extract -b SRC/xsuperlu_gpu.cu.base -o ../output/SRC/ssuperlu_gpu.cu precision=SINGLE