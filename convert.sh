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
./extract -b SRC/pxgsequ.c.base -o ../output/SRC/pdgsequ.c precision=DOUBLE
./extract -b SRC/xmyblas2.c.base -o ../output/SRC/xmyblas2.c precision=DOUBLE
./extract -b SRC/xmyblas2_dist.c.base -o ../output/SRC/xmyblas2_dist.c precision=DOUBLE
./extract -b SRC/xmyblas2_dist.c.base -o ../output/SRC/xmyblas2_dist.c precision=DOUBLE
./extract -b SRC/xreadMM.c.base -o ../output/SRC/dreadMM.c precision=DOUBLE
./extract -b SRC/px3dcomm.c.base -o ../output/SRC/pd3dcomm.c precision=DOUBLE
./extract -b SRC/pxdistribute-aux3d.c.base -o ../output/SRC/pddistribute-aux3d.c precision=DOUBLE
./extract -b SRC/xSchCompUdt-gpu.c.base -o ../output/SRC/dSchCompUdt-gpu.c precision=DOUBLE
./extract -b SRC/xgather.c.base -o ../output/SRC/dgather.c precision=DOUBLE
./extract -b SRC/xgsequ_dist.c.base -o ../output/SRC/dgsequ_dist.c precision=DOUBLE
./extract -b SRC/xlangs_dist.c.base -o ../output/SRC/dlangs_dist.c precision=DOUBLE
./extract -b SRC/xlaqgs_dist.c.base -o ../output/SRC/dlaqgs_dist.c precision=DOUBLE
./extract -b SRC/xldperm_dist.c.base -o ../output/SRC/dldperm_dist.c.base precision=DOUBLE
./extract -b SRC/xlustruct_gpu.h.base -o ../output/SRC/dlustruct_gpu.h precision=DOUBLE
./extract -b SRC/xnrformat_loc3d.c.base -o ../output/SRC/dnrformat_loc3d.c precision=DOUBLE
./extract -b SRC/xreadhb.c.base -o ../output/SRC/dreadhb.c precision=DOUBLE
./extract -b SRC/xreadrb.c.base -o ../output/SRC/dreadrb.c precision=DOUBLE
./extract -b SRC/xreadtriple.c.base -o ../output/SRC/dreadtriple.c precision=DOUBLE
./extract -b SRC/xreadtriple_noheader.c.base -o ../output/SRC/dreadtriple_noheader.c precision=DOUBLE
./extract -b SRC/xscatter.c.base -o ../output/SRC/dscatter.c precision=DOUBLE
./extract -b SRC/xscatter3d.c.base -o ../output/SRC/dscatter3d.c precision=DOUBLE
./extract -b SRC/xsp_blas2_dist.c.base -o ../output/SRC/dsp_blas2_dist.c precision=DOUBLE
./extract -b SRC/xsp_blas3_dist.c.base -o ../output/SRC/dsp_blas3_dist.c precision=DOUBLE
./extract -b SRC/xsuperlu_blas.c.base -o ../output/SRC/dsuperlu_blas.c.base precision=DOUBLE
./extract -b SRC/pxgssvx3d.c.base -o ../output/SRC/pdgssvx3d.c precision=DOUBLE
./extract -b SRC/x_c2cpp_GetHWPM.cpp.base -o ../output/SRC/d_c2cpp_GetHWPM.cpp precision=DOUBLE







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



./extract -b SRC/pxgstrs_lsum.c.base -o ../output/SRC/pzgstrs_lsum.c precision=DCOMPLEX
./extract -b SRC/pxdistribute.c.base -o ../output/SRC/pzdistribute.c precision=DCOMPLEX
./extract -b SRC/pxdistribute3d.c.base -o ../output/SRC/pzdistribute3d.c precision=DCOMPLEX
./extract -b SRC/x3DPartition.c.base -o ../output/SRC/z3DPartition.c precision=DCOMPLEX
./extract -b SRC/xdistribute.c.base -o ../output/SRC/zdistribute.c precision=DCOMPLEX
./extract -b SRC/pxgstrs.c.base -o ../output/SRC/pzgstrs.c precision=DCOMPLEX
./extract -b SRC/pxgstrs3d.c.base -o ../output/SRC/pzgstrs3d.c precision=DCOMPLEX
./extract -b SRC/pxgstrs_Bglobal.c.base -o ../output/SRC/pzgstrs_Bglobal.c precision=DCOMPLEX
./extract -b SRC/pxgstrs1.c.base -o ../output/SRC/pzgstrs1.c precision=DCOMPLEX
./extract -b SRC/pxsymbfact_distdata.c.base -o ../output/SRC/pzsymbfact_distdata.c precision=DCOMPLEX
./extract -b SRC/pxutil.c.base -o ../output/SRC/pzutil.c precision=DCOMPLEX
./extract -b SRC/superlu_xdefs.h.base -o ../output/SRC/superlu_zdefs.h precision=DCOMPLEX
./extract -b SRC/pxgssvx.c.base -o ../output/SRC/pzgssvx.c precision=DCOMPLEX
./extract -b SRC/xSchCompUdt-2Ddynamic.c.base -o ../output/SRC/zSchCompUdt-2Ddynamic.c precision=DCOMPLEX
./extract -b SRC/xlook_ahead_update.c.base -o ../output/SRC/zlook_ahead_update.c precision=DCOMPLEX
./extract -b SRC/pxgstrf.c.base -o ../output/SRC/pzgstrf.c precision=DCOMPLEX
./extract -b SRC/pxgstrf2.c.base -o ../output/SRC/pzgstrf2.c precision=DCOMPLEX
./extract -b SRC/pxgstrf3d.c.base -o ../output/SRC/pzgstrf3d.c precision=DCOMPLEX
./extract -b SRC/xutil_dist.c.base -o ../output/SRC/zutil_dist.c precision=DCOMPLEX
./extract -b SRC/xmemory_dist.c.base -o ../output/SRC/zmemory_dist.c precision=DCOMPLEX
./extract -b SRC/pxgssvx_ABglobal.c.base -o ../output/SRC/pzgssvx_ABglobal.c precision=DCOMPLEX
./extract -b SRC/xtreeFactorization.c.base -o ../output/SRC/ztreeFactorization.c precision=DCOMPLEX
./extract -b SRC/xtreeFactorizationGPU.c.base -o ../output/SRC/ztreeFactorizationGPU.c precision=DCOMPLEX
./extract -b SRC/xtrfAux.c.base -o ../output/SRC/ztrfAux.c precision=DCOMPLEX
./extract -b SRC/xtrfCommWrapper.c.base -o ../output/SRC/ztrfCommWrapper.c precision=DCOMPLEX
./extract -b SRC/pxGetDiagU.c.base -o ../output/SRC/pzGetDiagU.c precision=DCOMPLEX
./extract -b SRC/pxgsmv.c.base -o ../output/SRC/pzgsmv.c precision=DCOMPLEX
./extract -b SRC/pxgsmv_AXglobal.c.base -o ../output/SRC/pzgsmv_AXglobal.c precision=DCOMPLEX
./extract -b SRC/pxgsrfs.c.base -o ../output/SRC/pzgsrfs.c precision=DCOMPLEX
./extract -b SRC/pxgsrfs_ABXglobal.c.base -o ../output/SRC/pzgsrfs_ABXglobal.c precision=DCOMPLEX
./extract -b SRC/xcommunication_aux.c.base -o ../output/SRC/zcommunication_aux.c precision=DCOMPLEX
./extract -b SRC/xstatic_schedule.c.base -o ../output/SRC/zstatic_schedule.c precision=DCOMPLEX
./extract -b SRC/pxlangs.c.base -o ../output/SRC/pzlangs.c precision=DCOMPLEX
./extract -b SRC/pxlaqgs.c.base -o ../output/SRC/pzlaqgs.c precision=DCOMPLEX
./extract -b SRC/xssvx3dAux.c.base -o ../output/SRC/zssvx3dAux.c precision=DCOMPLEX
./extract -b SRC/xsuperlu_gpu.cu.base -o ../output/SRC/zsuperlu_gpu.cu precision=DCOMPLEX
./extract -b SRC/pxgsequ.c.base -o ../output/SRC/pzgsequ.c precision=DCOMPLEX
./extract -b SRC/xmyblas2.c.base -o ../output/SRC/xmyblas2.c precision=DCOMPLEX
./extract -b SRC/xmyblas2_dist.c.base -o ../output/SRC/xmyblas2_dist.c precision=DCOMPLEX
./extract -b SRC/xmyblas2_dist.c.base -o ../output/SRC/xmyblas2_dist.c precision=DCOMPLEX
./extract -b SRC/xreadMM.c.base -o ../output/SRC/zreadMM.c precision=DCOMPLEX
./extract -b SRC/px3dcomm.c.base -o ../output/SRC/pz3dcomm.c precision=DCOMPLEX
./extract -b SRC/pxdistribute-aux3d.c.base -o ../output/SRC/pzdistribute-aux3d.c precision=DCOMPLEX
./extract -b SRC/xSchCompUdt-gpu.c.base -o ../output/SRC/zSchCompUdt-gpu.c precision=DCOMPLEX
./extract -b SRC/xgather.c.base -o ../output/SRC/zgather.c precision=DCOMPLEX
./extract -b SRC/xgsequ_dist.c.base -o ../output/SRC/zgsequ_dist.c precision=DCOMPLEX
./extract -b SRC/xlangs_dist.c.base -o ../output/SRC/zlangs_dist.c precision=DCOMPLEX
./extract -b SRC/xlaqgs_dist.c.base -o ../output/SRC/zlaqgs_dist.c precision=DCOMPLEX
./extract -b SRC/xldperm_dist.c.base -o ../output/SRC/zldperm_dist.c.base precision=DCOMPLEX
./extract -b SRC/xlustruct_gpu.h.base -o ../output/SRC/zlustruct_gpu.h precision=DCOMPLEX
./extract -b SRC/xnrformat_loc3d.c.base -o ../output/SRC/znrformat_loc3d.c precision=DCOMPLEX
./extract -b SRC/xreadhb.c.base -o ../output/SRC/zreadhb.c precision=DCOMPLEX
./extract -b SRC/xreadrb.c.base -o ../output/SRC/zreadrb.c precision=DCOMPLEX
./extract -b SRC/xreadtriple.c.base -o ../output/SRC/zreadtriple.c precision=DCOMPLEX
./extract -b SRC/xreadtriple_noheader.c.base -o ../output/SRC/zreadtriple_noheader.c precision=DCOMPLEX
./extract -b SRC/xscatter.c.base -o ../output/SRC/zscatter.c precision=DCOMPLEX
./extract -b SRC/xscatter3d.c.base -o ../output/SRC/zscatter3d.c precision=DCOMPLEX
./extract -b SRC/xsp_blas2_dist.c.base -o ../output/SRC/zsp_blas2_dist.c precision=DCOMPLEX
./extract -b SRC/xsp_blas3_dist.c.base -o ../output/SRC/zsp_blas3_dist.c precision=DCOMPLEX
./extract -b SRC/xsuperlu_blas.c.base -o ../output/SRC/zsuperlu_blas.c.base precision=DCOMPLEX
./extract -b SRC/pxgssvx3d.c.base -o ../output/SRC/pzgssvx3d.c precision=DCOMPLEX
./extract -b SRC/x_c2cpp_GetHWPM.cpp.base -o ../output/SRC/z_c2cpp_GetHWPM.cpp precision=DCOMPLEX






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