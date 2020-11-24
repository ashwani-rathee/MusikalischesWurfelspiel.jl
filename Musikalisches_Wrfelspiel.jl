using Pkg
Pkg.add("Gtk")
using Gtk
win = GtkWindow("Musikalisches_Wurfelspiel.jl", 940, 520)
g=GtkGrid()
a = GtkEntry()  # a widget for entering text
set_gtk_property!(a, :text, "This is Gtk!")
b = GtkButton("Musikalisches_Wurfelspiel")
logo=GtkImage("logo-mozart.png")
label = GAccessor.markup(label,"""<b>
A Musikalisches Würfelspiel (German for "musical dice game") was a  \n system for using dice to randomly generate music from precomposed \n options. These games were quite popular throughout Western Europe in the \n 18th century. Several different games were devised, some that did not require dice,\n but merely choosing a random number. 
</b>\n
                          <a href=\"https://www.gtk.org\"
                          title=\"Our website\">GTK+ website</a>""")
function on_button_clicked(w)
	include("mozart.jl")
end
d = GtkCheckButton("Check me!")
c = GtkScale(false, 0:10)     # a slider
signal_connect(on_button_clicked, b, "clicked")

g[1,1]=label
g[2,1]=logo
g[1,4]=b
g[1,2]=c
g[2,2]=d
g[1:2,3]=a
set_gtk_property!(g, :column_homogeneous, true)
set_gtk_property!(g, :column_spacing, 15)  # introduce a 15-pixel gap between columns
push!(win, g)
showall(win)
