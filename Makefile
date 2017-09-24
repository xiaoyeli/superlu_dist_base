SRC = ./SRC
# TST = ./TESTING
TST = ./TEST
EXM = ./EXAMPLE
F90 = ./FORTRAN
BLS = ./CBLAS
# TGTSRC = ../SuperLU_DIST-branch/SRC
# TGTTST = ../SuperLU_DIST-branch/TESTING
# TGTEXM = ../SuperLU_DIST-branch/EXAMPLE
# TGTF90 = ../SuperLU_DIST-branch/FORTRAN
#
TGTSRC = ../superlu_dist.git/SRC
# TGTTST = ../superlu_dist.git/TESTING
TGTTST = ../superlu_dist.git/TEST
TGTEXM = ../superlu_dist.git/EXAMPLE
TGTF90 = ../superlu_dist.git/FORTRAN

all: double dcomplex

double:	\
	$(TGTSRC)/superlu_ddefs.h \
	$(TGTSRC)/pdgstrf.c \
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
	$(TGTSRC)/pdlangs.c \
	$(TGTSRC)/pdgsequ.c \
	$(TGTSRC)/pdlaqgs.c \
	$(TGTSRC)/pdutil.c \
	$(TGTSRC)/pdgsrfs.c \
	$(TGTSRC)/pdgsmv.c \
	$(TGTSRC)/dldperm_dist.c \
	$(TGTSRC)/dutil_dist.c \
	$(TGTSRC)/dmyblas2_dist.c \
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
	$(TGTEXM)/dcreate_matrix_perturbed.c \
	$(TGTF90)/f_pddrive.f90 \
	$(TGTF90)/superlu_c2f_dwrap.c \
	$(TGTF90)/dcreate_dist_matrix.c \
	$(TGTTST)/pdtest.c \
	$(TGTTST)/pdcompute_resid.c \

$(TGTSRC)/superlu_ddefs.h:	$(SRC)/superlu_xdefs.h.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrf.c:	$(SRC)/pxgstrf.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/pdgstrf2.c:	$(SRC)/pxgstrf2.c.base
	extract -b $? -o $@ precision=double
$(TGTSRC)/dscatter.c:	$(SRC)/xscatter.c.base
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
$(TGTEXM)/dcreate_matrix.c:	$(EXM)/xcreate_matrix.c.base
	extract -b $? -o $@ precision=double
$(TGTEXM)/dcreate_matrix_perturbed.c:	$(EXM)/xcreate_matrix_perturbed.c.base
	extract -b $? -o $@ precision=double
$(TGTF90)/f_pddrive.f90:	$(F90)/f_pxdrive.f90.base
	extract -b $? -o $@ precision=double
$(TGTF90)/superlu_c2f_dwrap.c:	$(F90)/superlu_c2f_xwrap.c.base
	extract -b $? -o $@ precision=double
$(TGTF90)/dcreate_dist_matrix.c:	$(F90)/xcreate_dist_matrix.c.base
	extract -b $? -o $@ precision=double
$(TGTTST)/pdtest.c:	$(TST)/pxtest.c.base
	extract -b $? -o $@ precision=double
$(TGTTST)/pdcompute_resid.c:	$(TST)/pxcompute_resid.c.base
	extract -b $? -o $@ precision=double

dcomplex: \
	$(TGTSRC)/superlu_zdefs.h \
	$(TGTSRC)/pzgstrf.c \
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
	$(TGTEXM)/zcreate_matrix_perturbed.c \
	$(TGTF90)/f_pzdrive.f90 \
	$(TGTF90)/superlu_c2f_zwrap.c \
	$(TGTF90)/zcreate_dist_matrix.c \
	$(TGTTST)/pztest.c \
	$(TGTTST)/pzcompute_resid.c \

$(TGTSRC)/superlu_zdefs.h:	$(SRC)/superlu_xdefs.h.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrf.c:	$(SRC)/pxgstrf.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzgstrf2.c:	$(SRC)/pxgstrf2.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zscatter.c:	$(SRC)/xscatter.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zlook_ahead_update.c:	$(SRC)/xlook_ahead_update.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zSchCompUdt-2Ddynamic.c:	$(SRC)/xSchCompUdt-2Ddynamic.c.base
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
$(TGTSRC)/zreadhb.c:	$(SRC)/xreadhb.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadrb.c:	$(SRC)/xreadrb.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadtriple.c:	$(SRC)/xreadtriple.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadtriple_noheader.c:	$(SRC)/xreadtriple_noheader.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zmemory_dist.c: $(SRC)/xmemory_dist.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/pzGetDiagU.c: $(SRC)/pxGetDiagU.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTSRC)/zreadMM.c:	$(SRC)/xreadMM.c.base
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
$(TGTEXM)/zcreate_matrix.c: $(EXM)/xcreate_matrix.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTEXM)/zcreate_matrix_perturbed.c: $(EXM)/xcreate_matrix_perturbed.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/f_pzdrive.f90: $(F90)/f_pxdrive.f90.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/superlu_c2f_zwrap.c: $(F90)/superlu_c2f_xwrap.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTF90)/zcreate_dist_matrix.c: $(F90)/xcreate_dist_matrix.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTTST)/pztest.c:	$(TST)/pxtest.c.base
	extract -b $? -o $@ precision=dcomplex
$(TGTTST)/pzcompute_resid.c:	$(TST)/pxcompute_resid.c.base
	extract -b $? -o $@ precision=dcomplex
