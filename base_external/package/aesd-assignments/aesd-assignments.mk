
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION =2a82d97532d059cf0213b78f53e09cf0e8252457
AESD_ASSIGNMENTS_SITE =git@github.com:cu-ecen-5013/assignment-3-manual-kernel-and-root-filesystem-build-HARSH1911RATHORE.git
AESD_ASSIGNMENTS_SITE_METHOD =git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
