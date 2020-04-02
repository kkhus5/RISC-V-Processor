SECTIONS
{
    . = 0x1000000;
    .text : {
        * (.start);
        * (.text);
    }
}
