################################################################################
#
# weston-service
#
################################################################################

WESTON_SERVICE_VERSION = 0.1.0
WESTON_SERVICE_SITE = $(CURDIR)/package/weston-service
WESTON_SERVICE_SITE_METHOD = local
WESTON_SERVICE_LICENSE = Apache License 2.0
WESTON_SERVICE_LICENSE_FILES = LICENSE

define WESTON_SERVICE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(@D)/weston.service \
                $(TARGET_DIR)/usr/lib/systemd/system/weston.service

	mkdir -p $(TARGET_DIR)/etc/xdg/weston
	$(INSTALL) -D -m 644 $(@D)/weston.ini \
		$(TARGET_DIR)/etc/xdg/weston/weston.ini
endef

$(eval $(generic-package))
