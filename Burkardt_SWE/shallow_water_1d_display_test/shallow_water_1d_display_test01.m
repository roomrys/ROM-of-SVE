function shallow_water_1d_display_test01 ( )

%*****************************************************************************80
%
%% shallow_water_1d_display_test01 tests shallow_water_1d_display.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    11 June 2012
%
%  Author:
%
%    John Burkardt
%
  filename_x = 'test01_x.txt';
  filename_t = 'test01_t.txt';
  filename_h = 'test01_h.txt';
  filename_uh = 'test01_uh.txt';

  nx = r8vec_header_read ( filename_x );
  nt = r8vec_header_read ( filename_t );
  nt = nt - 1;

  x = r8vec_data_read ( filename_x, nx );
  t = r8vec_data_read ( filename_t, nt + 1 );
  h = r8mat_data_read ( filename_h, nx, nt + 1 );
  uh = r8mat_data_read ( filename_uh, nx, nt + 1 );  

  shallow_water_1d_display ( h, uh, x, t )

  return
end
