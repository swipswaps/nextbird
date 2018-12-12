AM_CPPFLAGS = \
	$(CB_CFLAGS) \
	-include $(CONFIG_HEADER) \
	-DDATADIR=\"$(datadir)\" \
	-DPKGDATADIR=\"$(pkgdatadir)\" \
	-DG_LOG_DOMAIN=\"nextbird\" \
	-I$(top_srcdir)/src/rest/


AM_VALAFLAGS = \
	--thread \
	--enable-deprecated \
	--enable-checking \
	--vapidir $(builddir) \
	--vapidir $(top_srcdir)/vapi \
	--basedir $(srcdir) \
	--directory $(builddir) \
	--gresources $(top_srcdir)/nextbird.gresource.xml \
	-D G_LOG_DOMAIN=\"nextbird\" \
	$(top_srcdir)/vapi/config.vapi \
	$(top_srcdir)/vapi/nextbird-internal.vapi \
	$(top_srcdir)/vapi/rest-0.7.vapi \
	$(top_srcdir)/vapi/libtl.vapi \
	-C \
	$(NULL)

BUILT_SOURCES = \
	nextbird.h \
	nextbird-resources.c

bin_PROGRAMS = nextbird
noinst_LTLIBRARIES = libnextbird.la

libnextbird_la_VALASOURCES = \
	Nextbird.vala \
	MainWindow.vala \
	MainWidget.vala \
	Account.vala \
	HomeTimeline.vala \
	MentionsTimeline.vala \
	SearchPage.vala \
	DMPage.vala \
	IPage.vala \
	DefaultTimeline.vala \
	DMThreadsPage.vala \
	Settings.vala \
	NotificationManager.vala \
	Twitter.vala \
	ProfilePage.vala \
	TweetInfoPage.vala \
	ListStatusesPage.vala \
	ListsPage.vala \
	FavoritesTimeline.vala \
	FilterPage.vala \
	UserEventReceiver.vala \
	DMManager.vala \
	widgets/TweetListBox.vala \
	widgets/MaxSizeContainer.vala \
	widgets/ScrollWidget.vala \
	widgets/TextButton.vala \
	widgets/DoubleTapButton.vala \
	widgets/ReplyEntry.vala \
	widgets/PixbufButton.vala \
	widgets/BadgeRadioButton.vala \
	widgets/DMPlaceholderBox.vala \
	widgets/AccountCreateWidget.vala \
	widgets/AspectImage.vala \
	widgets/UserListsWidget.vala \
	widgets/ReplyIndicator.vala \
	widgets/MultiMediaWidget.vala \
	widgets/AvatarWidget.vala \
	widgets/AvatarBannerWidget.vala \
	widgets/CropWidget.vala \
	widgets/AddImageButton.vala \
	widgets/CompletionTextView.vala \
	widgets/LazyMenuButton.vala \
	widgets/ImpostorWidget.vala \
	widgets/FollowButton.vala \
	widgets/MediaButton.vala \
	widgets/ComposeImageManager.vala \
	widgets/FavImageView.vala \
	util/TweetUtils.vala \
	util/Utils.vala \
	util/UserCompletion.vala \
	util/Dirs.vala \
	util/UserUtils.vala \
	list/TweetListEntry.vala \
	list/DMListEntry.vala \
	list/UserListEntry.vala \
	list/DMThreadEntry.vala \
	list/StartConversationEntry.vala \
	list/ListListEntry.vala \
	list/NewListEntry.vala \
	list/FilterListEntry.vala \
	list/UserFilterEntry.vala \
	list/AddListEntry.vala \
	list/SnippetListEntry.vala \
	list/FavImageRow.vala \
	util/Benchmark.vala \
	window/ComposeTweetWindow.vala \
	window/SettingsDialog.vala \
	window/UserListDialog.vala \
	window/ModifyFilterDialog.vala \
	window/AboutDialog.vala \
	window/AccountDialog.vala \
	window/MediaDialog.vala \
	window/ModifySnippetDialog.vala \
	sql/Database.vala \
	sql/InsertStatement.vala \
	sql/UpdateStatement.vala \
	sql/SelectStatement.vala \
	async/Collect.vala \
	model/DMThreadsModel.vala

nodist_libnextbird_la_SOURCES = \
	libnextbird_la_vala.stamp \
	$(libnextbird_la_VALASOURCES:.vala=.c)

nextbird.h nextbird.vapi: libnextbird_la_vala.stamp
$(libnextbird_la_VALASOURCES:.vala=.c): libnextbird_la_vala.stamp


libnextbird_la_SOURCES = \
	CbMedia.c \
	CbMedia.h \
	CbMediaDownloader.c \
	CbMediaDownloader.h \
	CbTypes.c \
	CbTypes.h \
	CbTextTransform.c \
	CbTextTransform.h \
	CbTweet.c \
	CbTweet.h \
	CbFilter.c \
	CbFilter.h \
	CbAvatarCache.c \
	CbAvatarCache.h \
	CbUserCounter.c \
	CbUserCounter.h \
	CbMediaImageWidget.h \
	CbMediaImageWidget.c \
	CbTweetModel.h \
	CbTweetModel.c \
	CbTwitterItem.h \
	CbTwitterItem.c \
	CbDeltaUpdater.h \
	CbDeltaUpdater.c \
	CbUtils.h \
	CbUtils.c \
	CbBundle.h \
	CbBundle.c \
	CbBundleHistory.h \
	CbBundleHistory.c \
	CbSnippetManager.h \
	CbSnippetManager.c \
	CbMediaVideoWidget.h \
	CbMediaVideoWidget.c \
	CbSurfaceProgress.h \
	CbSurfaceProgress.c \
	CbMessageReceiver.h \
	CbMessageReceiver.c \
	CbUserStream.h \
	CbUserStream.c \
	CbComposeJob.h \
	CbComposeJob.c \
	CbGtkCompat.h \
	CbUserCompletionModel.c \
	CbUserCompletionModel.h \
	CbEmojiChooser.c \
	CbEmojiChooser.h \
	rest/rest/rest-param.c \
	rest/rest/rest-params.c \
	rest/rest/rest-proxy.c \
	rest/rest/rest-proxy-call.c \
	rest/rest/rest-proxy-call-private.h \
	rest/rest/rest-main.c \
	rest/rest/rest-private.h \
	rest/rest/oauth-proxy.c \
	rest/rest/oauth-proxy-call.c \
	rest/rest/oauth-proxy-private.h \
	rest/rest/sha1.c \
	rest/rest/sha1.h \
	rest/rest/rest-param.h \
	rest/rest/rest-params.h \
	rest/rest/rest-proxy.h \
	rest/rest/rest-proxy-call.h \
	rest/rest/oauth-proxy.h \
	rest/rest/oauth-proxy-call.h \
	libtl/libtweetlength.h \
	libtl/libtweetlength.c \
	libtl/data.h




libnextbird_la_vala.stamp: $(libnextbird_la_VALASOURCES) Makefile
	@$(VALAC) \
		$(AM_VALAFLAGS) $(CB_VALA_FLAGS) \
		-H nextbird.h \
		--library nextbird \
		--vapi nextbird.vapi \
		$(filter %.vala %.c,$^)
	touch $@

libnextbird_la_LIBADD = $(CB_LIBS)

nextbird_VALASOURCES = \
	main.vala


nodist_nextbird_SOURCES = \
	nextbird_vala.stamp \
	nextbird-resources.c \
	$(nextbird_VALASOURCES:.vala=.c)

nextbird_LDADD = \
	$(CB_LIBS) \
	$(builddir)/libnextbird.la

nextbird_VALAFLAGS = \
	$(CB_VALA_FLAGS) \
	nextbird.vapi

$(nextbird_VALASOURCES:.vala=.c): nextbird_vala.stamp

nextbird_vala.stamp: $(builddir)/libnextbird.la $(builddir)/nextbird.vapi $(nextbird_VALASOURCES) Makefile
	@$(VALAC) \
		$(AM_VALAFLAGS) $(CB_VALA_FLAGS) \
		--pkg nextbird \
		$(filter %.vala %.c,$^)
	touch $@

resource_deps = $(shell $(GLIB_COMPILE_RESOURCES) --generate-dependencies --sourcedir=$(top_srcdir) $(top_srcdir)/nextbird.gresource.xml)
nextbird-resources.c: $(top_srcdir)/nextbird.gresource.xml $(resource_deps) Makefile
	XMLLINT=$(XMLLINT) $(GLIB_COMPILE_RESOURCES) --target $@ --generate --sourcedir=$(top_srcdir) --c-name nextbird $<

CLEANFILES = \
	libnextbird_la_vala.stamp \
	nextbird_vala.stamp \
	$(libnextbird_la_VALASOURCES:.vala=.c) \
	$(nodist_nextbird_SOURCES) \
	nextbird.vapi \
	nextbird.h

EXTRA_DIST = \
	$(libnextbird_la_VALASOURCES) \
	$(nextbird_VALASOURCES) \
	$(nextbird_SOURCES) \
	$(resource_deps)
