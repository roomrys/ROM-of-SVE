function [b] = TopographyIC(x,TopoCase)
%**************************************************************************
%                   Create depth topography: b(x)
%
%                   Coded by Manuel Diaz 2015.12.06
%**************************************************************************
    % Domain's usefull parameters
    Lx=x(end)-x(1); xmid=0.5*(x(end)+x(1));
    % Create the selected Topography IC
    switch TopoCase
        case 0 % Flat topography
            b = zeros(size(x));
        case 1 % Elliptical bump
            b = (0.2-0.05*(x-10).^2).*(x>=8 & x<=12);
        case 2 % Another Elliptical bump
            b = 0.48*(1-((x-20)/4).^2).*(x>=16 & x<=24);
        case 3 % Square bump
            b = 1.0*RectangularPulse(Lx/3,xmid,x);
        otherwise
            error('case not in the list')
    end
end % Common IC

function u = RectangularPulse(a,b,x)
    % Inputs
    % a : initial point of the jump
    % b : final point of the jump
    % x : discrete domian. E.g.: x can be generated by linspace() func.
    u = heaviside(x-a) - heaviside(x-b);
end