function shallow_water_1d_display ( h_array, uh_array, x, t )

%*****************************************************************************80
%
%% SHALLOW_WATER_1D_DISPLAY displays solutions of the 1D shallow water equations.
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
%  Reference:
%
%    Cleve Moler,
%    "The Shallow Water Equations",
%    Experiments with MATLAB.
%
%  Parameters:
%
%    Input, real H_ARRAY(NX,NT+1), the height for all space and time points.
%
%    Input, real UH_ARRAY(NX,NT+1), the mass velocity for all space and time points.
%
%    Input, real X(NX), the coordinates of the nodes.
%
%    Input, real T(NT+1), the time at each timestep.
%
  x_min = min ( x );
  x_max = max ( x );
  
  h_min = 0.0;
  h_max = max ( max ( h_array ) );

  uh_max = max ( max ( uh_array ) );
  uh_min = min ( min ( uh_array ) );

  [ nx, nt ] = size ( uh_array );
%
%  Minor adjustment so that NT means the same thing as in the other program.
%
  nt = nt - 1;
%
%  For each time step, plot H.
%
  for it = 1 : nt + 1

    figure ( 1 )
    clf
    h1 = axes ( );
    axis ( [ x_min, x_max, h_min, h_max ] );
    axis manual;
    hold on
    area ( h1, x, h_array(:,it) );
    title_string = sprintf ( 'H(T), Step %3d, Time = %f', it, t(it) );
    title ( title_string );
    xlabel ( 'X' );
    ylabel ( 'H(X,T)' );
    grid on
    hold off

    figure ( 2 )
    clf
    h2 = axes ( );
    axis ( [ x_min, x_max, uh_min, uh_max ] );
    axis manual;
    hold on
    area ( h2, x, uh_array(:,it), 0.0, 'FaceColor', [ 0.6, 0.1, 0.1 ] );
    title_string = sprintf ( 'UH(T), Step %3d, Time = %f', it, t(it) );
    title ( title_string, 'fontsize', 16 );
    xlabel ( 'X' );
    ylabel ( 'UH(X,T)' );
    grid on
    hold off

    pause ( 5 )

  end
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'SHALLOW_WATER_1D_DISPLAY:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  return
end
