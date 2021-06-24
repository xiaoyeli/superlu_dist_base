SRC = ./SRC
# TST = ./TESTING
TST = ./TEST
EXM = ./EXAMPLE
F90 = ./FORTRAN
BLS = ./CBLAS

#TGTSRC 	= ../superlu_dist.git/SRC
#TGTTST 	= ../superlu_dist.git/TEST
#TGTEXM 	= ../superlu_dist.git/EXAMPLE
#TGTF90 	= ../superlu_dist.git/FORTRAN
#GTSRC	= ../Mixed-Prec-slud.git/SRC
#TGTTST 	= ../Mixed-Prec-slud.git/TEST
#TGTEXM 	= ../Mixed-Prec-slud.git/EXAMPLE
#TGTF90 	= ../Mixed-Prec-slud.git/FORTRAN
#TGTSRC 	= ../ssg1-superlu_dist.git/SRC
#TGTTST 	= ../ssg1-superlu_dist.git/TEST
#TGTEXM 	= ../ssg1-superlu_dist.git/EXAMPLE
#TGTF90 	= ../ssg1-superlu_dist.git/FORTRAN
#TGTSRC 	= ../Version-7.git/SRC
#TGTTST 	= ../Version-7.git/TEST
#TGTEXM 	= ../Version-7.git/EXAMPLE
#TGTF90 	= ../Version-7.git/FORTRAN

TGTSRC 	= ../NEXT/SRC
TGTTST 	= ../NEXT/TEST
TGTEXM 	= ../NEXT/EXAMPLE
TGTF90 	= ../NEXT/FORTRAN

#all: single
all: single double dcomplex

single:	\
	$(TGTSRC)/slustruct_gpu.h \
	$(TGTSRC)/ssuperlu_gpu.cu \
	$(TGTSRC)/superlu_sdefs.h \
	$(TGTSRC)/psgstrf.c \
	$(TGTSRC)/sstatic_schedule.c \
	$(TGTSRC)/psgstrf2.c \
	$(TGTSRC)/sscatter.c \
	$(TGTSRC)/sscatter3d.c \
	$(TGTSRC)/slook_ahead_update.c \
	$(TGTSRC)/sSchCompUdt-2Ddynamic.c \
	$(TGTSRC)/sSchCompUdt-cuda.c \
	$(TGTSRC)/psgssvx_ABglobal.c \
	$(TGTSRC)/psgstrs_Bglobal.c \
	$(TGTSRC)/psgsrfs_ABXglobal.c \
	$(TGTSRC)/psgsmv_AXglobal.c \
	$(TGTSRC)/psgstrs_lsum.c \
	$(TGTSRC)/psgstrs1.c \
	$(TGTSRC)/psgssvx.c \
	$(TGTSRC)/psgstrs.c \
	$(TGTSRC)/sdistribute.c \
	$(TGTSRC)/psdistribute.c \
	$(TGTSRC)/pssymbfact_distdata.c \
	$(TGTSRC)/slangs_dist.c \
	$(TGTSRC)/sgsequ_dist.c \
	$(TGTSRC)/slaqgs_dist.c \
	$(TGTSRC)/pslangs.c \
	$(TGTSRC)/psgsequ.c \
	$(TGTSRC)/pslaqgs.c \
	$(TGTSRC)/psutil.c \
	$(TGTSRC)/psgsrfs.c \
	$(TGTSRC)/psgsmv.c \
	$(TGTSRC)/sldperm_dist.c \
	$(TGTSRC)/sutil_dist.c \
	$(TGTSRC)/smyblas2_dist.c \
	$(TGTSRC)/ssp_blas2_dist.c \
	$(TGTSRC)/ssp_blas3_dist.c \
	$(TGTSRC)/psGetDiagU.c \
	$(TGTSRC)/sreadhb.c \
	$(TGTSRC)/sreadrb.c \
	$(TGTSRC)/sreadtriple.c \
	$(TGTSRC)/sreadtriple_noheader.c \
	$(TGTSRC)/sreadMM.c \
	$(TGTSRC)/smemory_dist.c \
	$(TGTEXM)/psdrive_ABglobal.c \
	$(TGTEXM)/psdrive1_ABglobal.c \
	$(TGTEXM)/psdrive2_ABglobal.c \
	$(TGTEXM)/psdrive3_ABglobal.c \
	$(TGTEXM)/psdrive4_ABglobal.c \
	$(TGTEXM)/psdrive.c \
	$(TGTEXM)/psdrive1.c \
	$(TGTEXM)/psdrive2.c \
	$(TGTEXM)/psdrive3.c \
	$(TGTEXM)/psdrive4.c \
	$(TGTEXM)/screate_matrix.c \
	$(TGTEXM)/screate_matrix3d.c \
	$(TGTEXM)/screate_matrix_perturbed.c \
	$(TGTF90)/f_psdrive.F90 \
	$(TGTF90)/superlu_c2f_swrap.c \
	$(TGTF90)/c2f_screate_matrix_x_b.c \
	$(TGTTST)/pstest.c \
	$(TGTTST)/pscompute_resid.c \
	$(TGTEXM)/psdrive3d.c \
	$(TGTSRC)/sscatter3d.c \
	$(TGTSRC)/sgather.c \
	$(TGTSRC)/ps3dcomm.c \
	$(TGTSRC)/strfAux.c \
	$(TGTSRC)/scommunication_aux.c \
	$(TGTSRC)/strfCommWrapper.c \
	$(TGTSRC)/streeFactorization.c \
	$(TGTSRC)/streeFactorizationGPU.c \
	$(TGTSRC)/psgstrf3d.c \
	$(TGTSRC)/psgstrf3d.c \
	$(TGTSRC)/psgssvx3d.c \
	$(TGTSRC)/snrformat_loc3d.c \
	$(TGTSRC)/ssuperlu_blas.c \

$(TGTSRC)/slustruct_gpu.h:	$(SRC)/xlustruct_gpu.h.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/ssuperlu_gpu.cu:	$(SRC)/xsuperlu_gpu.cu.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/superlu_sdefs.h:	$(SRC)/superlu_xdefs.h.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrf.c:	$(SRC)/pxgstrf.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sstatic_schedule.c:	$(SRC)/xstatic_schedule.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrf2.c:	$(SRC)/pxgstrf2.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sscatter.c:	$(SRC)/xscatter.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sscatter3d.c:	$(SRC)/xscatter3d.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/slook_ahead_update.c:	$(SRC)/xlook_ahead_update.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sSchCompUdt-2Ddynamic.c:	$(SRC)/xSchCompUdt-2Ddynamic.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sSchCompUdt-cuda.c:	$(SRC)/xSchCompUdt-cuda.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgssvx_ABglobal.c:	$(SRC)/pxgssvx_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrs_Bglobal.c:	$(SRC)/pxgstrs_Bglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgsrfs_ABXglobal.c:	$(SRC)/pxgsrfs_ABXglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgsmv_AXglobal.c:	$(SRC)/pxgsmv_AXglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrs_lsum.c:	$(SRC)/pxgstrs_lsum.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrs1.c:	$(SRC)/pxgstrs1.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgssvx.c:	$(SRC)/pxgssvx.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrs.c:	$(SRC)/pxgstrs.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sdistribute.c:	$(SRC)/xdistribute.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psdistribute.c:	$(SRC)/pxdistribute.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/pssymbfact_distdata.c: $(SRC)/pxsymbfact_distdata.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/slangs_dist.c:	$(SRC)/xlangs_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sgsequ_dist.c:	$(SRC)/xgsequ_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/slaqgs_dist.c:	$(SRC)/xlaqgs_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/pslangs.c:	$(SRC)/pxlangs.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgsequ.c:	$(SRC)/pxgsequ.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/pslaqgs.c:	$(SRC)/pxlaqgs.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psutil.c:	$(SRC)/pxutil.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgsrfs.c:	$(SRC)/pxgsrfs.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgsmv.c:	$(SRC)/pxgsmv.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sldperm_dist.c: $(SRC)/xldperm_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sutil_dist.c:	$(SRC)/xutil_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psGetDiagU.c:	$(SRC)/pxGetDiagU.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/smyblas2_dist.c:	$(SRC)/xmyblas2_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/ssp_blas2_dist.c:	$(SRC)/xsp_blas2_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/ssp_blas3_dist.c:	$(SRC)/xsp_blas3_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sreadhb.c:	$(SRC)/xreadhb.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sreadrb.c:	$(SRC)/xreadrb.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sreadtriple.c:	$(SRC)/xreadtriple.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sreadtriple_noheader.c:	$(SRC)/xreadtriple_noheader.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sreadMM.c:	$(SRC)/xreadMM.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/smemory_dist.c:	$(SRC)/xmemory_dist.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/sgather.c:	$(SRC)/xgather.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/ps3dcomm.c:	$(SRC)/px3dcomm.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/strfAux.c:	$(SRC)/xtrfAux.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/scommunication_aux.c:	$(SRC)/xcommunication_aux.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/strfCommWrapper.c:	$(SRC)/xtrfCommWrapper.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/streeFactorization.c:	$(SRC)/xtreeFactorization.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/streeFactorizationGPU.c: $(SRC)/xtreeFactorizationGPU.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgstrf3d.c:	$(SRC)/pxgstrf3d.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/psgssvx3d.c:	$(SRC)/pxgssvx3d.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/snrformat_loc3d.c:	$(SRC)/xnrformat_loc3d.c.base
	extract -b $? -o $@ precision=single
$(TGTSRC)/ssuperlu_blas.c: $(SRC)/xsuperlu_blas.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive_ABglobal.c:	$(EXM)/pxdrive_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive1_ABglobal.c:	$(EXM)/pxdrive1_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive2_ABglobal.c:	$(EXM)/pxdrive2_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive3_ABglobal.c:	$(EXM)/pxdrive3_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive4_ABglobal.c:	$(EXM)/pxdrive4_ABglobal.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive.c:	$(EXM)/pxdrive.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive1.c:	$(EXM)/pxdrive1.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive2.c:	$(EXM)/pxdrive2.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive3.c:	$(EXM)/pxdrive3.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive4.c:	$(EXM)/pxdrive4.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/psdrive3d.c:	$(EXM)/pxdrive3d.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/screate_matrix.c:	$(EXM)/xcreate_matrix.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/screate_matrix3d.c:	$(EXM)/xcreate_matrix3d.c.base
	extract -b $? -o $@ precision=single
$(TGTEXM)/screate_matrix_perturbed.c:	$(EXM)/xcreate_matrix_perturbed.c.base
	extract -b $? -o $@ precision=single
$(TGTF90)/f_psdrive.F90:	$(F90)/f_pxdrive.F90.base
	extract -b $? -o $@ precision=single
$(TGTF90)/superlu_c2f_swrap.c:	$(F90)/superlu_c2f_xwrap.c.base
	extract -b $? -o $@ precision=single
$(TGTF90)/c2f_screate_matrix_x_b.c:	$(F90)/c2f_xcreate_matrix_x_b.c.base
	extract -b $? -o $@ precision=single
$(TGTTST)/pstest.c:	$(TST)/pxtest.c.base
	extract -b $? -o $@ precision=single
$(TGTTST)/pscompute_resid.c:	$(TST)/pxcompute_resid.c.base
	extract -b $? -o $@ precision=single

double:	\
	$(TGTSRC)/dlustruct_gpu.h \
	$(TGTSRC)/dsuperlu_gpu.cu \
	$(TGTSRC)/superlu_ddefs.h \
	$(TGTSRC)/pdgstrf.c \
	$(TGTSRC)/dstatic_schedule.c \
	$(TGTSRC)/pdgstrf2.c \
	$(TGTSRC)/dscatter.c \
	$(TGTSRC)/dlook_ahead_update.c \
	$(TGTSRC)/dSchCompUdt-2Ddynamic.c \
	$(TGTSRC)/dSchCompUdt-cuda.c \
	$(TGTSRC)/pdgssvx_ABglobal.c \
	$(TGTSRC)/pdgstrs_Bglobal.c \
	$(TGTSRC)/pdgsrfs_ABXglobal.c \
	$(TGTSRC)/pdgsmv_AXglobal.c \
	$(TGTSRC)/pdgstrs_lsum.c \
	$(TGTSRC)/pdgstrs1.c \
	$(TGTSRC)/pdgssvx.c \
	$(TGTSRC)/pdgstrs.c \
	$(TGTSRC)/ddistribute.c \
	$(TGTSRC)/pddistribute.c \
	$(TGTSRC)/pdsymbfact_distdata.c \
	$(TGTSRC)/dlangs_dist.c \
	$(TGTSRC)/dgsequ_dist.c \
	$(TGTSRC)/dlaqgs_dist.c \
	$(TGTSRC)/pdlangs.c \
	$(TGTSRC)/pdgsequ.c \
	$(TGTSRC)/pdlaqgs.c \
	$(TGTSRC)/pdutil.c \
	$(TGTSRC)/pdgsrfs.c \
	$(TGTSRC)/pdgsmv.c \
	$(TGTSRC)/dldperm_dist.c \
	$(TGTSRC)/dutil_dist.c \
	$(TGTSRC)/dmyblas2_dist.c \
	$(TGTSRC)/dsp_blas2_dist.c \
	$(TGTSRC)/dsp_blas3_dist.c \
	$(TGTSRC)/pdGetDiagU.c \
	$(TGTSRC)/dreadhb.c \
	$(TGTSRC)/dreadrb.c \
	$(TGTSRC)/dreadtriple.c \
	$(TGTSRC)/dreadtriple_noheader.c \
	$(TGTSRC)/dreadMM.c \
	$(TGTSRC)/dmemory_dist.c \
	$(TGTEXM)/pddrive_ABglobal.c \
	$(TGTEXM)/pddrive1_ABglobal.c \
	$(TGTEXM)/pddrive2_ABglobal.c \
	$(TGTEXM)/pddrive3_ABglobal.c \
	$(TGTEXM)/pddrive4_ABglobal.c \
	$(TGTEXM)/pddrive.c \
	$(TGTEXM)/pddrive1.c \
	$(TGTEXM)/pddrive2.c \
	$(TGTEXM)/pddrive3.c \
	$(TGTEXM)/pddrive4.c \
	$(TGTEXM)/dcreate_matrix.c \
	$(TGTEXM)/dcreate_matrix3d.c \
	$(TGTEXM)/dcreate_matrix_perturbed.c \
	$(TGTF90)/f_pddrive.F90 \
	$(TGTF90)/f_pddrive3d.F90 \
	$(TGTF90)/superlu_c2f_dwrap.c \
	$(TGTF90)/c2f_dcreate_matrix_x_b.c \
	$(TGTTST)/pdtest.c \
	$(TGTTST)/pdcompute_resid.c \
	$(TGTEXM)/pddrive3d.c \
	$(TGTSRC)/dscatter3d.c \
	$(TGTSRC)/dgather.c \
	$(TGTSRC)/pd3dcomm.c \
	$(TGTSRC)/dtrfAux.c \
	$(TGTSRC)/dcommunication_aux.c \
	$(TGTSRC)/dtrfCommWrapper.c \
	$(TGTSRC)/dtreeFactorization.c \
	$(TGTSRC)/dtreeFactorizationGPU.c \
	$(TGTSRC)/pdgstrf3d.c \
	$(TGTSRC)/pdgssvx3d.c \
	$(TGTSRC)/dnrformat_loc3d.c \
	$(TGTSRC)/dsuperlu_blas.c \


$(TGTSRC)/dlustruct_gpu.h:	$(SRC)/xlustruct_gpu.h.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dsuperlu_gpu.cu:	$(SRC)/xsuperlu_gpu.cu.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/superlu_ddefs.h:	$(SRC)/superlu_xdefs.h.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrf.c:	$(SRC)/pxgstrf.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dstatic_schedule.c:	$(SRC)/xstatic_schedule.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrf2.c:	$(SRC)/pxgstrf2.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dscatter.c:	$(SRC)/xscatter.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dscatter3d.c:	$(SRC)/xscatter3d.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dlook_ahead_update.c:	$(SRC)/xlook_ahead_update.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dSchCompUdt-2Ddynamic.c:	$(SRC)/xSchCompUdt-2Ddynamic.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dSchCompUdt-cuda.c:	$(SRC)/xSchCompUdt-cuda.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgssvx_ABglobal.c:	$(SRC)/pxgssvx_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrs_Bglobal.c:	$(SRC)/pxgstrs_Bglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgsrfs_ABXglobal.c:	$(SRC)/pxgsrfs_ABXglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgsmv_AXglobal.c:	$(SRC)/pxgsmv_AXglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrs_lsum.c:	$(SRC)/pxgstrs_lsum.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrs1.c:	$(SRC)/pxgstrs1.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgssvx.c:	$(SRC)/pxgssvx.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrs.c:	$(SRC)/pxgstrs.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/ddistribute.c:	$(SRC)/xdistribute.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pddistribute.c:	$(SRC)/pxdistribute.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdsymbfact_distdata.c: $(SRC)/pxsymbfact_distdata.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dlangs_dist.c:	$(SRC)/xlangs_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dgsequ_dist.c:	$(SRC)/xgsequ_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dlaqgs_dist.c:	$(SRC)/xlaqgs_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdlangs.c:	$(SRC)/pxlangs.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgsequ.c:	$(SRC)/pxgsequ.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdlaqgs.c:	$(SRC)/pxlaqgs.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdutil.c:	$(SRC)/pxutil.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgsrfs.c:	$(SRC)/pxgsrfs.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgsmv.c:	$(SRC)/pxgsmv.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dldperm_dist.c: $(SRC)/xldperm_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dutil_dist.c:	$(SRC)/xutil_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdGetDiagU.c:	$(SRC)/pxGetDiagU.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dmyblas2_dist.c:	$(SRC)/xmyblas2_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dsp_blas2_dist.c:	$(SRC)/xsp_blas2_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dsp_blas3_dist.c:	$(SRC)/xsp_blas3_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dreadhb.c:	$(SRC)/xreadhb.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dreadrb.c:	$(SRC)/xreadrb.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dreadtriple.c:	$(SRC)/xreadtriple.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dreadtriple_noheader.c:	$(SRC)/xreadtriple_noheader.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dreadMM.c:	$(SRC)/xreadMM.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dmemory_dist.c:	$(SRC)/xmemory_dist.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dgather.c:	$(SRC)/xgather.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pd3dcomm.c:	$(SRC)/px3dcomm.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dtrfAux.c:	$(SRC)/xtrfAux.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dcommunication_aux.c:	$(SRC)/xcommunication_aux.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dtrfCommWrapper.c:	$(SRC)/xtrfCommWrapper.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dtreeFactorization.c:	$(SRC)/xtreeFactorization.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dtreeFactorizationGPU.c: $(SRC)/xtreeFactorizationGPU.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrf3d.c:	$(SRC)/pxgstrf3d.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgssvx3d.c:	$(SRC)/pxgssvx3d.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dnrformat_loc3d.c:	$(SRC)/xnrformat_loc3d.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dsuperlu_blas.c:	$(SRC)/xsuperlu_blas.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive_ABglobal.c:	$(EXM)/pxdrive_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive1_ABglobal.c:	$(EXM)/pxdrive1_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive2_ABglobal.c:	$(EXM)/pxdrive2_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive3_ABglobal.c:	$(EXM)/pxdrive3_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive4_ABglobal.c:	$(EXM)/pxdrive4_ABglobal.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive.c:	$(EXM)/pxdrive.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive1.c:	$(EXM)/pxdrive1.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive2.c:	$(EXM)/pxdrive2.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive3.c:	$(EXM)/pxdrive3.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive4.c:	$(EXM)/pxdrive4.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/pddrive3d.c:	$(EXM)/pxdrive3d.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/dcreate_matrix.c:	$(EXM)/xcreate_matrix.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/dcreate_matrix3d.c:	$(EXM)/xcreate_matrix3d.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/dcreate_matrix_perturbed.c:	$(EXM)/xcreate_matrix_perturbed.c.base
	extract -b $? -o $@ precision=double
$(TGTF90)/f_pddrive.F90:	$(F90)/f_pxdrive.F90.base
	extract -b $? -o $@ precision=double
$(TGTF90)/f_pddrive3d.F90:	$(F90)/f_pxdrive3d.F90.base
	extract -b $? -o $@ precision=double
$(TGTF90)/superlu_c2f_dwrap.c:	$(F90)/superlu_c2f_xwrap.c.base
	extract -b $? -o $@ precision=double
$(TGTF90)/c2f_dcreate_matrix_x_b.c:	$(F90)/c2f_xcreate_matrix_x_b.c.base
	extract -b $? -o $@ precision=double
$(TGTTST)/pdtest.c:	$(TST)/pxtest.c.base
	extract -b $? -o $@ precision=double
$(TGTTST)/pdcompute_resid.c:	$(TST)/pxcompute_resid.c.base
	extract -b $? -o $@ precision=double

dcomplex: \
	$(TGTSRC)/zlustruct_gpu.h \
	$(TGTSRC)/zsuperlu_gpu.cu \
	$(TGTSRC)/superlu_zdefs.h \
	$(TGTSRC)/pzgstrf.c \
	$(TGTSRC)/zstatic_schedule.c \
	$(TGTSRC)/pzgstrf2.c \
	$(TGTSRC)/zscatter.c \
	$(TGTSRC)/zlook_ahead_update.c \
	$(TGTSRC)/zSchCompUdt-2Ddynamic.c \
	$(TGTSRC)/zSchCompUdt-cuda.c \
	$(TGTSRC)/pzgssvx_ABglobal.c \
	$(TGTSRC)/pzgstrs_Bglobal.c \
	$(TGTSRC)/pzgsrfs_ABXglobal.c \
	$(TGTSRC)/pzgsmv_AXglobal.c \
	$(TGTSRC)/pzgstrs_lsum.c \
	$(TGTSRC)/pzgstrs1.c \
	$(TGTSRC)/pzgssvx.c \
	$(TGTSRC)/pzgstrs.c \
	$(TGTSRC)/zdistribute.c \
	$(TGTSRC)/pzdistribute.c \
	$(TGTSRC)/pzsymbfact_distdata.c \
	$(TGTSRC)/zlangs_dist.c \
	$(TGTSRC)/zgsequ_dist.c \
	$(TGTSRC)/zlaqgs_dist.c \
	$(TGTSRC)/pzlangs.c \
	$(TGTSRC)/pzgsequ.c \
	$(TGTSRC)/pzlaqgs.c \
	$(TGTSRC)/pzutil.c \
	$(TGTSRC)/pzgsrfs.c \
	$(TGTSRC)/pzgsmv.c \
	$(TGTSRC)/zldperm_dist.c \
	$(TGTSRC)/zutil_dist.c \
	$(TGTSRC)/pzGetDiagU.c \
	$(TGTSRC)/zmyblas2_dist.c \
	$(TGTSRC)/zsp_blas2_dist.c \
	$(TGTSRC)/zsp_blas3_dist.c \
	$(TGTSRC)/zreadhb.c \
	$(TGTSRC)/zreadrb.c \
	$(TGTSRC)/zreadtriple.c \
	$(TGTSRC)/zreadtriple_noheader.c \
	$(TGTSRC)/zreadMM.c \
	$(TGTSRC)/zmemory_dist.c \
	$(TGTEXM)/pzdrive_ABglobal.c \
	$(TGTEXM)/pzdrive1_ABglobal.c \
	$(TGTEXM)/pzdrive2_ABglobal.c \
	$(TGTEXM)/pzdrive3_ABglobal.c \
	$(TGTEXM)/pzdrive4_ABglobal.c \
	$(TGTEXM)/pzdrive.c \
	$(TGTEXM)/pzdrive1.c \
	$(TGTEXM)/pzdrive2.c \
	$(TGTEXM)/pzdrive3.c \
	$(TGTEXM)/pzdrive4.c \
	$(TGTEXM)/zcreate_matrix.c \
	$(TGTEXM)/zcreate_matrix3d.c \
	$(TGTEXM)/zcreate_matrix_perturbed.c \
	$(TGTF90)/f_pzdrive.F90 \
	$(TGTF90)/f_pzdrive3d.F90 \
	$(TGTF90)/superlu_c2f_zwrap.c \
	$(TGTF90)/c2f_zcreate_matrix_x_b.c \
	$(TGTTST)/pztest.c \
	$(TGTTST)/pzcompute_resid.c \
	$(TGTEXM)/pzdrive3d.c \
	$(TGTSRC)/zscatter3d.c \
	$(TGTSRC)/zgather.c \
	$(TGTSRC)/pz3dcomm.c \
	$(TGTSRC)/ztrfAux.c \
	$(TGTSRC)/zcommunication_aux.c \
	$(TGTSRC)/ztrfCommWrapper.c \
	$(TGTSRC)/ztreeFactorization.c \
	$(TGTSRC)/ztreeFactorizationGPU.c \
	$(TGTSRC)/pzgstrf3d.c \
	$(TGTSRC)/pzgssvx3d.c \
	$(TGTSRC)/znrformat_loc3d.c \
	$(TGTSRC)/zsuperlu_blas.c \

$(TGTSRC)/zlustruct_gpu.h:	$(SRC)/xlustruct_gpu.h.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zsuperlu_gpu.cu:	$(SRC)/xsuperlu_gpu.cu.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/superlu_zdefs.h:	$(SRC)/superlu_xdefs.h.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrf.c:	$(SRC)/pxgstrf.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zstatic_schedule.c:	$(SRC)/xstatic_schedule.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrf2.c:	$(SRC)/pxgstrf2.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zscatter.c:	$(SRC)/xscatter.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zscatter3d.c:	$(SRC)/xscatter3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zlook_ahead_update.c:	$(SRC)/xlook_ahead_update.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zSchCompUdt-2Ddynamic.c: $(SRC)/xSchCompUdt-2Ddynamic.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zSchCompUdt-cuda.c:	$(SRC)/xSchCompUdt-cuda.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgssvx_ABglobal.c:	$(SRC)/pxgssvx_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrs_Bglobal.c:	$(SRC)/pxgstrs_Bglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgsrfs_ABXglobal.c:	$(SRC)/pxgsrfs_ABXglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgsmv_AXglobal.c:	$(SRC)/pxgsmv_AXglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrs_lsum.c:	$(SRC)/pxgstrs_lsum.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrs1.c:	$(SRC)/pxgstrs1.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgssvx.c:	$(SRC)/pxgssvx.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrs.c:	$(SRC)/pxgstrs.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zdistribute.c:	$(SRC)/xdistribute.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzdistribute.c:	$(SRC)/pxdistribute.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzsymbfact_distdata.c: $(SRC)/pxsymbfact_distdata.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zlangs_dist.c:	$(SRC)/xlangs_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zgsequ_dist.c:	$(SRC)/xgsequ_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zlaqgs_dist.c:	$(SRC)/xlaqgs_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzlangs.c:	$(SRC)/pxlangs.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgsequ.c:	$(SRC)/pxgsequ.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzlaqgs.c:	$(SRC)/pxlaqgs.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzutil.c:	$(SRC)/pxutil.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgsrfs.c:	$(SRC)/pxgsrfs.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgsmv.c:	$(SRC)/pxgsmv.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zutil_dist.c:	$(SRC)/xutil_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zldperm_dist.c: $(SRC)/xldperm_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zmyblas2_dist.c:	$(SRC)/xmyblas2_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zsp_blas2_dist.c:	$(SRC)/xsp_blas2_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zsp_blas3_dist.c:	$(SRC)/xsp_blas3_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadhb.c:	$(SRC)/xreadhb.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadrb.c:	$(SRC)/xreadrb.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadtriple.c:	$(SRC)/xreadtriple.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadtriple_noheader.c:	$(SRC)/xreadtriple_noheader.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzGetDiagU.c: $(SRC)/pxGetDiagU.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadMM.c:	$(SRC)/xreadMM.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zmemory_dist.c: $(SRC)/xmemory_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zgather.c: $(SRC)/xgather.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pz3dcomm.c: $(SRC)/px3dcomm.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/ztrfAux.c: $(SRC)/xtrfAux.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zcommunication_aux.c: $(SRC)/xcommunication_aux.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/ztrfCommWrapper.c: $(SRC)/xtrfCommWrapper.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/ztreeFactorization.c: $(SRC)/xtreeFactorization.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/ztreeFactorizationGPU.c: $(SRC)/xtreeFactorizationGPU.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrf3d.c: $(SRC)/pxgstrf3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/znrformat_loc3d.c: $(SRC)/xnrformat_loc3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgssvx3d.c: $(SRC)/pxgssvx3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zsuperlu_blas.c:	$(SRC)/xsuperlu_blas.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive_ABglobal.c:	$(EXM)/pxdrive_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive1_ABglobal.c:	$(EXM)/pxdrive1_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive2_ABglobal.c:	$(EXM)/pxdrive2_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive3_ABglobal.c:	$(EXM)/pxdrive3_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive4_ABglobal.c:	$(EXM)/pxdrive4_ABglobal.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive.c:	$(EXM)/pxdrive.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive1.c:	$(EXM)/pxdrive1.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive2.c:	$(EXM)/pxdrive2.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive3.c:	$(EXM)/pxdrive3.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive4.c:	$(EXM)/pxdrive4.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/pzdrive3d.c:	$(EXM)/pxdrive3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/zcreate_matrix.c: $(EXM)/xcreate_matrix.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/zcreate_matrix3d.c: $(EXM)/xcreate_matrix3d.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/zcreate_matrix_perturbed.c: $(EXM)/xcreate_matrix_perturbed.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/f_pzdrive.F90: $(F90)/f_pxdrive.F90.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/f_pzdrive3d.F90: $(F90)/f_pxdrive3d.F90.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/superlu_c2f_zwrap.c: $(F90)/superlu_c2f_xwrap.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/c2f_zcreate_matrix_x_b.c: $(F90)/c2f_xcreate_matrix_x_b.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTTST)/pztest.c:	$(TST)/pxtest.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTTST)/pzcompute_resid.c:	$(TST)/pxcompute_resid.c.base
	extract -b $? -o $@ precision=dcomplex
