node default {
    file {'/root/README':
        ensure    => file,
        content   => 'This is a read me file test',
        owner     => 'root',
    }
}