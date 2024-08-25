//
// Created by villerot on 19/08/24.
//

#ifndef TEXTURE_H
#define TEXTURE_H

#include <glad/glad.h> // include glad to get all the required OpenGL headers
#include "../stb_image.h"

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

// TODO : Do a proper texture class

class Texture {
public:
    // the program ID
    unsigned int ID;

    // constructor reads and builds the texture
    Texture(const char* texturePath);

};


#endif //TEXTURE_H
