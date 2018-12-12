/*  This file is part of nextbird, a Gtk+ linux Twitter client.
 *  Copyright (C) 2013 Timm Bäder
 *
 *  nextbird is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  nextbird is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with nextbird.  If not, see <http://www.gnu.org/licenses/>.
 */

int main (string[] args) {
#if VIDEO
  Gst.init (ref args);
#endif

  //no initialisation of static fields :(
  Settings.init ();
  var nextbird = new Nextbird ();
  int ret = nextbird.run (args);

#if DEBUG
  var list = Gtk.Window.list_toplevels ();
  debug ("Toplevels Left: %u", list.length ());
  foreach (var w in list) {
    debug ("Toplevel: %s", __class_name (w));
    w.destroy ();
  }
#endif

  return ret;
}
