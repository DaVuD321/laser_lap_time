#include "visualisation.h"

#include <stdio.h>
//#include <X11/X.h>
//#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include <math.h>

bool g_visualisation_gl_init_done = false;
int g_visualisation_window_handle = -1;

Visualisation::Visualisation(unsigned int window_width, unsigned int window_height)
{
  if (g_visualisation_gl_init_done == false)
  {
    int num = 0;

    glutInit(&num, NULL);


    glutInitWindowSize(window_width, window_height);
    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);
    g_visualisation_window_handle = glutCreateWindow("Časomiera");


    glViewport(0, 0, window_width, window_height);
    glMatrixMode(GL_PROJECTION);
    glEnable(GL_DEPTH_TEST);
    gluPerspective(45, (float) window_width / window_height, 0.1, 2000);
    glMatrixMode(GL_MODELVIEW);

    x_pos = 0.0;
    y_pos = 0.0;
    z_pos = 0.0;

    time_ = 0.0;
    g_visualisation_gl_init_done = true;
  }
}


Visualisation::~Visualisation()
{
//   glutDestroyWindow( g_visualisation_window_handle );
}


void Visualisation::start()
{
    time_+= 1.0;

    glMatrixMode(GL_PROJECTION);
    glShadeModel(GL_SMOOTH);
    glEnable(GL_DEPTH_TEST);
    glMatrixMode(GL_MODELVIEW);

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);

    glMatrixMode(GL_MODELVIEW);

    glClearColor(0.0, 0.0, 0.0, 0.0);
}


void Visualisation::finish()
{
    glutSwapBuffers();
}

void Visualisation::push()
{
  glPushMatrix();
}

void Visualisation::pop()
{
  glPopMatrix();
}

void Visualisation::translate(float x, float y, float z)
{
  glTranslatef(x, y, z);
}

void Visualisation::rotate(float angle_x, float angle_y, float angle_z)
{
  glRotatef(angle_x, 1.0, 0.0, 0.0);
  glRotatef(angle_y, 0.0, 1.0, 0.0);
  glRotatef(angle_z, 0.0, 0.0, 1.0);
}

void Visualisation::set_color(float r, float g, float b)
{
  glColor3f(r, g, b);
}

void Visualisation::paint_square(float x, float y, float z, float size, float r, float g, float b)
{
  glColor3f(r, g, b);
  glBegin(GL_QUADS);

  glVertex3f(x + size/2.0, y + size/2.0, z);
  glVertex3f(x - size/2.0, y + size/2.0, z);
  glVertex3f(x - size/2.0, y - size/2.0, z);
  glVertex3f(x + size/2.0, y - size/2.0, z);

  glEnd();
}

void Visualisation::paint_rectangle(float x, float y, float z, float width, float height, float r, float g, float b)
{
  glColor3f(r, g, b);
  glBegin(GL_QUADS);

  glVertex3f(x + width/2.0, y + height/2.0, z);
  glVertex3f(x - width/2.0, y + height/2.0, z);
  glVertex3f(x - width/2.0, y - height/2.0, z);
  glVertex3f(x + width/2.0, y - height/2.0, z);

  glEnd();
}

void Visualisation::draw_cube(float size)
{
  float a = size/2.0;
  glBegin(GL_QUADS);                // Begin drawing the color cube with 6 quads
        // Top face (y = 1.0f)
        // Define vertices in counter-clockwise (CCW) order with normal pointing out
        glVertex3f( a, a, -a);
        glVertex3f(-a, a, -a);
        glVertex3f(-a, a,  a);
        glVertex3f( a, a,  a);

        // Bottom face (y = -a)
        glVertex3f( a, -a,  a);
        glVertex3f(-a, -a,  a);
        glVertex3f(-a, -a, -a);
        glVertex3f( a, -a, -a);

        // Front face  (z = a)
        glVertex3f( a,  a, a);
        glVertex3f(-a,  a, a);
        glVertex3f(-a, -a, a);
        glVertex3f( a, -a, a);

        // Back face (z = -a)
        glVertex3f( a, -a, -a);
        glVertex3f(-a, -a, -a);
        glVertex3f(-a,  a, -a);
        glVertex3f( a,  a, -a);

        // Left face (x = -a)
        glVertex3f(-a,  a,  a);
        glVertex3f(-a,  a, -a);
        glVertex3f(-a, -a, -a);
        glVertex3f(-a, -a,  a);

        // Right face (x = a)

        glVertex3f(a,  a, -a);
        glVertex3f(a,  a,  a);
        glVertex3f(a, -a,  a);
        glVertex3f(a, -a, -a);
     glEnd();
}

void Visualisation::paint_circle(float x, float y, float z, float size, float r, float g, float b)
{
  unsigned int steps = 12;
  float pi = 3.141592654;

	glColor3f(r, g, b);

	glBegin(GL_POLYGON);

	for(float i = 0.0; i < 2.0*pi; i+= pi/steps)
 			glVertex3f(x + size*cos(i), y + size*sin(i), z + 0.0);

	glEnd();
}


void Visualisation::print(float x, float y, float z, std::string string)
{
  //set the position of the text in the window using the x, y and z coordinates
  glRasterPos3f(x,y,z);
  //get the length of the string to display

  //loop to display character by character
  for (unsigned int i = 0; i < string.size(); i++)
  {
  glutBitmapCharacter(GLUT_BITMAP_TIMES_ROMAN_24,string[i]);
  }
}

void Visualisation::print3d(int x, int y, int z, std::string string)
{
  //set the position of the text in the window using the x, y and z coordinates
  glRasterPos3i(x,y,z);
  //get the length of the string to display

  //loop to display character by character
  for (unsigned int i = 0; i < string.size(); i++)
  {
  glutBitmapCharacter(GLUT_BITMAP_TIMES_ROMAN_24,string[i]);
  }
}
