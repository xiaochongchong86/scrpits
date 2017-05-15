#!/usr/bin/perl
#
#
sub transf()
{
       my $ipaddr = shift;
       my $y = $ipaddr % 256; 
       my $m = int( ($ipaddr - $y) / (256 * 256 * 256) ); 
       my $n = int( ($ipaddr - 256 * 256 *256 * $m - $y) / (256 * 256) ); 
       my $x = int( ($ipaddr - 256 * 256 *256 * $m - 256 * 256 * $n - $y) / 256 ); 
       my $res = join('.',($m,$n,$x,$y));
    return $res;
}
while(<>)
{
	@list = split '\s+', $_;
	my $ip1 = &transf( $list[0] );
	my $ip2 = &transf( $list[1] );
        
	print $ip1,"\t",  $ip2,"\t", $_ ;

}
