# shallow_water_1d_display_test
click here for [original site](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/shallow_water_1d_display_test.html)

**shallow_water_1d_display_test**, a MATLAB program which calls shallow_water_1d_display() to display a solution of the shallow water equations in 1D, generally as computed by the program shallow_water_1d.

### Licensing:

The computer code and data files described and made available on this web page are distributed under  [the GNU LGPL license.](https://www.gnu.org/licenses/lgpl-3.0.en.html)

### Related Data and Programs:

[shallow_water_1d_display](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display/shallow_water_1d_display.html), a MATLAB program which can display a solution of the shallow water equations in 1D, generally as computed by the program shallow_water_1d.

### Source Code:

-   [shallow_water_1d_display_test.m](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/shallow_water_1d_display_test.m)  calls all the tests.
-   [shallow_water_1d_display_test.sh](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/shallow_water_1d_display_test.sh)  runs all the tests.
-   [shallow_water_1d_display_test.txt](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/shallow_water_1d_display_test.txt)  the output file.

-   [shallow_water_1d_display_test01.m](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/shallow_water_1d_display_test01.m)  displays solutions from the TEST01 data.

The command

        [ h_array, uh_array, x, t ] = shallow_water_1d ( 41, 100, 1.0, 0.2, 9.8 )
      

created the files:

-   [test01_x.txt](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/test01_x.txt), the X values.
-   [test01_t.txt](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/test01_t.txt), the T values.
-   [test01_h.txt](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/test01_h.txt), the H values.
-   [test01_uh.txt](https://people.sc.fsu.edu/~jburkardt/m_src/shallow_water_1d_display_test/test01_uh.txt), the UH values.