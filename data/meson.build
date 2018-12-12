i18n = import('i18n')

install_data(
  'de.lucaswerkmeister.nextbird.gschema.xml',
  install_dir: join_paths(get_option('datadir'), 'glib-2.0', 'schemas')
)
meson.add_install_script('meson_post_install.py')

i18n.merge_file(
  input:  'de.lucaswerkmeister.nextbird.desktop.in',
  output: 'de.lucaswerkmeister.nextbird.desktop',
  po_dir: '../po/',
  type:   'desktop',
  install: true,
  install_dir: join_paths(get_option('datadir'), 'applications')
)
i18n.merge_file(
  input:  'de.lucaswerkmeister.nextbird.appdata.xml.in',
  output: 'de.lucaswerkmeister.nextbird.appdata.xml',
  po_dir: '../po/',
  type:   'xml',
  install: true,
  install_dir: join_paths(get_option('datadir'), 'metainfo')
)

install_man('nextbird.1')

conf = configuration_data()
conf.set('bindir', join_paths(get_option('prefix'), 'bin'))

configure_file(
  input: 'de.lucaswerkmeister.nextbird.service.in',
  output: 'de.lucaswerkmeister.nextbird.service',
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
