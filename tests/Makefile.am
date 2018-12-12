AM_CPPFLAGS = \
	$(CB_CFLAGS) \
	-I$(top_builddir)/src \
	-I$(top_srcdir)/src \
	-I$(top_srcdir)/src/rest/ \
	-include $(CONFIG_HEADER) \
	-DDATADIR=\"$(datadir)\" \
	-DPKGDATADIR=\"$(pkgdatadir)\" \
	-O0 \
	-Wno-inline \
	-D DEBUG

AM_VALAFLAGS = \
	--enable-checking \
	--enable-experimental \
	--vapidir $(top_builddir)/src \
	--vapidir $(top_srcdir)/vapi \
	--pkg nextbird-internal \
	--pkg rest-0.7 \
	--gresources $(top_srcdir)/nextbird.gresource.xml \
	-C

TESTS_ENVIRONMENT = GSETTINGS_SCHEMA_DIR=$(abs_top_builddir)/data

TESTS = \
	tweetmodel \
	utils \
	bundlehistory \
	usercounter \
	inlinemediadownloader \
	tweetparsing \
	filters \
	texttransform \
	avatardownload \
	friends \
	avatarcache \
	usercompletionmodel \
	dmmanager

check_PROGRAMS = $(TESTS)

tests_VALASOURCES = \
	tweetmodel.vala \
	utils.vala \
	bundlehistory.vala \
	usercounter.vala \
	inlinemediadownloader.vala \
	tweetparsing.vala \
	filters.vala \
	texttransform.vala \
	avatardownload.vala \
	friends.vala \
	avatarcache.vala \
	usercompletionmodel.vala \
	dmmanager.vala

$(tests_VALASOURCES:.vala=.c): tests_vala.stamp

tests_vala.stamp: $(tests_VALASOURCES) $(top_builddir)/src/libnextbird.la $(top_builddir)/src/nextbird.vapi Makefile
	for s in $(filter %.vala,$^); do \
		$(VALAC) \
			$(AM_VALAFLAGS) $(CB_VALA_FLAGS) \
			--pkg nextbird \
			--enable-deprecated \
			$$s; \
	done; \
	touch $@

resource_deps = $(shell $(GLIB_COMPILE_RESOURCES) --generate-dependencies --sourcedir=$(top_srcdir) $(top_srcdir)/nextbird.gresource.xml)
nextbird-resources.c: $(top_srcdir)/nextbird.gresource.xml $(resource_deps) Makefile
	XMLLINT=$(XMLLINT) $(GLIB_COMPILE_RESOURCES) --target $@ --generate --sourcedir=$(top_srcdir) --c-name nextbird $<



nodist_tweetmodel_SOURCES = tweetmodel.c
tweetmodel_LDADD = $(top_builddir)/src/libnextbird.la

nodist_utils_SOURCES = utils.c
utils_LDADD = $(top_builddir)/src/libnextbird.la

nodist_bundlehistory_SOURCES = bundlehistory.c
bundlehistory_LDADD = $(top_builddir)/src/libnextbird.la

nodist_usercounter_SOURCES = usercounter.c nextbird-resources.c
usercounter_LDADD = $(top_builddir)/src/libnextbird.la

nodist_inlinemediadownloader_SOURCES = inlinemediadownloader.c
inlinemediadownloader_LDADD = $(top_builddir)/src/libnextbird.la

nodist_tweetparsing_SOURCES = tweetparsing.c nextbird-resources.c
tweetparsing_LDADD = $(top_builddir)/src/libnextbird.la

nodist_filters_SOURCES = filters.c nextbird-resources.c
filters_LDADD = $(top_builddir)/src/libnextbird.la

nodist_friends_SOURCES = friends.c nextbird-resources.c
friends_LDADD = $(top_builddir)/src/libnextbird.la

nodist_texttransform_SOURCES = texttransform.c
texttransform_LDADD = $(top_builddir)/src/libnextbird.la

nodist_avatardownload_SOURCES = avatardownload.c nextbird-resources.c
avatardownload_LDADD = $(top_builddir)/src/libnextbird.la

nodist_avatarcache_SOURCES = avatarcache.c
avatarcache_LDADD = $(top_builddir)/src/libnextbird.la

nodist_usercompletionmodel_SOURCES = usercompletionmodel.c
usercompletionmodel_LDADD = $(top_builddir)/src/libnextbird.la

nodist_dmmanager_SOURCES = dmmanager.c nextbird-resources.c
dmmanager_LDADD = $(top_builddir)/src/libnextbird.la


CLEANFILES = \
	tests_vala.stamp \
	nextbird-resources.c \
	$(tests_VALASOURCES:.vala=.c)

EXTRA_DIST = \
	$(tests_VALASOURCES)
