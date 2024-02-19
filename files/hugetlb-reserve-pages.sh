#!/bin/sh

nodes_path=/sys/devices/system/node/
if [ ! -d $nodes_path ]; then
        echo "ERROR: $nodes_path does not exist"
        exit 1
fi

reserve_pages()
{
        echo $1 > $nodes_path/$2/hugepages/hugepages-1048576kB/nr_hugepages
}

reserve_pages 1355 node0
reserve_pages 1355 node1
reserve_pages 1355 node2
reserve_pages 1355 node3
reserve_pages 1355 node4
reserve_pages 1355 node5
reserve_pages 1355 node6
reserve_pages 1355 node7