
AM_CPPFLAGS = \
	$(CB_CFLAGS) \
	-I$(top_builddir)/src \
	-I$(top_srcdir)/src \
	-include $(CONFIG_HEADER) \
	-DDATADIR=\"$(datadir)\" \
	-DPKGDATADIR=\"$(pkgdatadir)\" \
	-D DEBUG

AM_VALAFLAGS = \
	$(CB_VALA_FLAGS) \
	--enable-checking \
	--enable-experimental \
	--vapidir $(top_builddir)/src \
	--vapidir $(top_srcdir)/vapi \
	--pkg nextbird-internal \
	--pkg nextbird \
	--enable-deprecated \
	--gresources $(top_srcdir)/nextbird.gresource.xml \
	-C \
	-g

resource_deps = $(shell $(GLIB_COMPILE_RESOURCES) --generate-dependencies --sourcedir=$(top_srcdir) $(top_srcdir)/nextbird.gresource.xml)
nextbird-resources.c: $(top_srcdir)/nextbird.gresource.xml $(resource_deps) Makefile
	XMLLINT=$(XMLLINT) $(GLIB_COMPILE_RESOURCES) --target $@ --generate --sourcedir=$(top_srcdir) --c-name nextbird $<


noinst_bin_PROGRAMS = \
	tweetstates \
	accountdialog

noinst_bindir = $(abs_top_builddir)

tweetstates_SOURCES = tweetstates.vala nextbird-resources.c
tweetstates_LDADD = $(CB_LIBS) $(top_builddir)/src/libnextbird.la

accountdialog_SOURCES = accountdialog.vala nextbird-resources.c
accountdialog_LDADD = $(CB_LIBS) $(top_builddir)/src/libnextbird.la

CLEANFILES = nextbird-resources.c
