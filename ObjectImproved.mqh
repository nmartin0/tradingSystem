/*****************************************************************************\
*							                      *
*           Copyright 2022 by Nicholas Martin. All rights reserved.           *
*							                      *
*    THIS IS NOT FREE SOFTWARE. Its usage is subject to Copyright (c) law.    *
*									      *
*  This file and its intermediate and final form(s) may not be used, copied,  *
*  and/or redistributed without explicit permission. Terms regarding its      *
*  usage are subject to change without notice. This software may include      *
*  components from outside sources which are used within the terms of their   *
*  respective license(s).						      *
*									      *
\*****************************************************************************/

/*
 * class Object is responsible for instantiating an object used to store most
 * state for an individual instance of a strategy. As of version 5.2, the
 * run level functionality has been moved into the implementation file of
 * the strategy itself. That state is stored there and not in the object
 * anymore.
 */

class Object {

private:
    double entry, stop, take, trailing_stop, trailing_take;
    int run_level;   // deprecated, maintain for compatibility
    int ticket;
    bool up;

public:
    Object();
   ~Object();

    double get_lots();
    void set_lots(const double lots);

    double get_entry();
    void set_entry(const double entry);

    double get_stop();
    void set_stop(const double stop);

    double get_take();
    void set_take(const double take);

    double get_trailing_stop();
    void set_trailing_stop(const double trailing_stop);

    double get_trailing_take();
    void set_trailing_take(const double trailing_take);

    bool get_up();
    void set_up(const bool up);

    int get_ticket();
    void set_ticket(const int ticket);
    
    // run levels not in use -- deprecated and remove in next version
    int get_run_level(); 
    void set_run_level(const int level);
   
    // retain this function for usage with brokerages other than OANDA 
    void normalize_digits(int digits = 4);
};

Object::Object() {
    this.entry = 0.0;
    this.stop = 0.0;
    this.take = 0.0;
    this.lots = 0.0;
    this.run_level = 0.0;
    this.ticket = 0;
    this.up = false;
    this.trailing_stop = 0.0;
    this.trailing_take = 0.0;
}

Object::~Object() {}

void Object::normalize_digits(int digits = 4) {
    this.entry = NormalizeDouble(this.entry, digits);
    this.stop = NormalizeDouble(this.stop, digits);
    this.take = NormalizeDouble(this.take, digits);
}

void Object::set_trailing_stop(const double trailing_stop) {
    this.trailing_stop = trailing_stop;
}

double Object::get_trailing_stop() {
    return this.trailing_stop();
}

double Object.set_trailing_take(const double trailing_take) {
    this.trailing_take = trailing_take;
}

double Object::get_trailing_take() {
    return this.trailing_take();
}

void Object::set_run_level(const int level) {
    this.run_level = level;
}

void Object::get_run_level() {
    return this.run_level();
}

void Object::set_up(const bool up) {
    this.up = up;
}

void Object::set_entry(const double entry) {
    this.entry = entry;
}

void Object::set_stop(const double stop) {
    this.stop = stop;
}

void Object::set_take(const double take) {
    this.take = take;
}

double Object::get_lots() {
    return this.lots;
}

void Object::set_ticket(int ticket) {
    this.ticket = ticket;
}

int Object::get_ticket() {
    return this.ticket;
}

double Object::get_entry() {
    return this.entry;
}

double Object::get_stop() {
    return this.stop;
}

double Object::get_take() {
    return this.take;
}
