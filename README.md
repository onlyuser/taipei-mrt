taipei-mrt
==========

Copyright (C) 2011-2015 Jerry Chen <mailto:onlyuser@gmail.com>

About
-----

taipei-mrt is a graphviz dot specification for the Taipei MRT.
台北捷運系統graphviz dot地圖.

A Motivating Example
--------------------

Radial:

[![picture alt](https://sites.google.com/site/onlyuser/files/taipei-mrt_thumb.png?attredirects=0 "taipei-mrt")](https://sites.google.com/site/onlyuser/files/taipei-mrt.png?attredirects=0)

With GPS coordinates for major junctions:

[![picture alt](https://sites.google.com/site/onlyuser/files/taipei-mrt_with_pos_thumb.png?attredirects=0 "taipei-mrt_with_pos")](https://sites.google.com/site/onlyuser/files/taipei-mrt_with_pos.png?attredirects=0)

Tree layout:

[![picture alt](https://sites.google.com/site/onlyuser/files/taipei-mrt_tree_layout_thumb.png?attredirects=0 "taipei-mrt_with_pos")](https://sites.google.com/site/onlyuser/files/taipei-mrt_tree_layout.png?attredirects=0)

Requirements
------------

    graphviz

Installation (Debian)
---------------------

1. git clone https://github.com/onlyuser/taipei-mrt.git
2. sudo aptitude install graphviz

Usage
-----

<pre>
neato taipei-mrt.dot -Tpng -otaipei-mrt.png
</pre>

References
----------

<dl>
    <dt>"taipei-metro-stations"</dt>
    <dd>https://github.com/repeat/taipei-metro-stations</dd>
</dl>

Keywords
--------

    Taipei MRT, dot, graphviz, graph search, 台北捷運, 捷運系統, 捷運站, 地圖
