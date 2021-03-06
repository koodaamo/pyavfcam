// pyavfcam
// Simple video capture in OSX using AVFoundation
//
// 2015 dashesy

#include <stdexcept>
#include <iostream>
#include <algorithm>
#include "utils.h"


bool str_ends_with(std::string const &full_string, std::string const &ending)
{
    if (full_string.length() >= ending.length())
        return (0 == full_string.compare (full_string.length() - ending.length(), ending.length(), ending));
    else
        return false;
}

// file extension including dot
std::string file_extension(std::string file)
{

    std::size_t found = file.find_last_of(".");
    return file.substr(found);

}

std::string file_basename(std::string file)
{

    std::size_t found = file.find_last_of(".");
    return file.substr(0, found);
}

std::string str_tolower(std::string const & data)
{
    std::string lower = data;
    std::transform(lower.begin(), lower.end(), lower.begin(), ::tolower);

    return lower;
}
