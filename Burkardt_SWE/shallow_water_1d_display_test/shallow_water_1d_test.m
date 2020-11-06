function shallow_water_1d_test ( )

%*****************************************************************************80
%
%% shallow_water_1d_test tests shallow_water_1d.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 March 2019
%
%  Author:
%
%    John Burkardt
%
  addpath ( '../shallow_water_1d' )

  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'shallow_water_1d_test:\n' );
  fprintf ( 1, '  MATLAB/Octave version %s\n', version ( ) );
  fprintf ( 1, '  Test shallow_water_1d.\n' );

  [ h_array, uh_array, x, t ] = shallow_water_1d ( 41, 100, 1.0, 0.2, 9.8 );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'shallow_water_1d_test:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  rmpath ( '../shallow_water_1d' )

  return
end
