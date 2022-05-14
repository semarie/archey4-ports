COMMENT =	simple system information tool written in Python

MODPY_EGG_VERSION =	4.13.4

DISTNAME =	archey4-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/HorlogeSkynet/archey4/0

# Default value is ports@openbsd.org, no need to fill in
#MAINTAINER =		???

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		net/py-netifaces${MODPY_FLAVOR}>=0.10 \
			sysutils/py-distro${MODPY_FLAVOR}>=1.3

TEST_DEPENDS +=		${RUN_DEPENDS}

# TODO
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m archey

.include <bsd.port.mk>
