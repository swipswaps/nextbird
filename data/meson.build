i18n = import('i18n')

install_data(
  'de.lucaswerkmeister.corebird.gschema.xml',
  install_dir: join_paths(get_option('datadir'), 'glib-2.0', 'schemas')
)
meson.add_install_script('meson_post_install.py')

i18n.merge_file(
  input:  'de.lucaswerkmeister.corebird.desktop.in',
  output: 'de.lucaswerkmeister.corebird.desktop',
  po_dir: '../po/',
  type:   'desktop',
  install: true,
  install_dir: join_paths(get_option('datadir'), 'applications')
)
i18n.merge_file(
  input:  'de.lucaswerkmeister.corebird.appdata.xml.in',
  output: 'de.lucaswerkmeister.corebird.appdata.xml',
  po_dir: '../po/',
  type:   'xml',
  install: true,
  install_dir: join_paths(get_option('datadir'), 'metainfo')
)

install_man('corebird.1')

conf = configuration_data()
conf.set('bindir', join_paths(get_option('prefix'), 'bin'))

configure_file(
  input: 'de.lucaswerkmeister.corebird.service.in',
  output: 'de.lucaswerkmeister.corebird.service',
  configuration: conf,
  install_dir: join_paths(get_option('datadir'), 'dbus-1/services')
)

gnome.compile_schemas()

# Install all application icons in one go
# TODO: This will unfortunately also install the Makefile{.am} files which are still in hicolor/...
install_subdir(
  'hicolor',
  install_dir: join_paths(get_option('datadir'), 'icons')
)
