﻿/*
Copyright 2017 apHarmony

This file is part of jsHarmony.

jsHarmony is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

jsHarmony is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this package.  If not, see <http://www.gnu.org/licenses/>.
*/

var Helper = require('jsharmony/Helper');
var _ = require('lodash');

module.exports = exports = function(module, funcs){
  var exports = {};

  exports.DEV_DB_SCHEMA = function (req, res, next) {

    var verb = req.method.toLowerCase();
    if (!req.body) req.body = {};
    
    var Q = req.query;
    var P = {};
    if (req.body && ('data' in req.body)){
      try{ P = JSON.parse(req.body.data); }
      catch(ex){ Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }
    }
    var jsh = module.jsh;
    var appsrv = jsh.AppSrv;
    var model = jsh.getModel(req, module.namespace + funcs._transform('Dev/DBSchema'));
    
    if (!Helper.hasModelAction(req, model, 'B')) { Helper.GenError(req, res, -11, 'Invalid Model Access'); return; }

    if (verb == 'get') {
      let dbid = Q.db;

      if (!appsrv.ParamCheck('P', P, [])) { Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }

      var action = 'schema';
      if(Q.action){
        if(!_.includes(['schema','inserts'], Q.action)){ Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }
        action = Q.action.toString();
      }

      if(!dbid){
        var dbs = [];
        for(var dbid_key in jsh.DB) dbs.push(dbid_key);
        res.end(JSON.stringify({ _success: 1, dbs: dbs }));
        return;
      }
      if(!(dbid in jsh.DB)) { Helper.GenError(req, res, -4, 'Invalid Database ID'); return; }

      if(action=='schema'){
        if (!appsrv.ParamCheck('Q', Q, ['|db','|action'])) { Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }
        var schema = jsh.DB[dbid].schema_definition;
        res.end(JSON.stringify({ _success: 1, schema: schema, funcs: jsh.DB[dbid].SQLExt.Funcs }));
      }
      else if(action=='inserts'){
        if (!appsrv.ParamCheck('Q', Q, ['|db','&action','&table','|output','|columns','|rows'])) { Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }
        var table = (Q.table||'').toString();
        if(!table){ Helper.GenError(req, res, -4, 'Invalid Parameters'); return; }

        var columns = null;
        if(Q.columns){
          try{
            columns = (columns||'').split(',');
          }
          catch(ex){
            return Helper.GenError(req, res, -4, 'Invalid Parameters');
          }
        }

        var numrows = 200;
        if(Q.rows && parseInt(Q.rows)){
          numrows = parseInt(Q.rows);
        }

        //Get data
        appsrv.ExecRecordset(req._DBContext, 'select '+(numrows >= 0 ? 'top '+numrows.toString() : '')+' * from '+table, [], {}, function(err, rslt){
          if(err) return Helper.GenError(req, res, -99999, err);
          var data = rslt && rslt.length && rslt[0];
          if(Q.output=='dbobject'){
            var rslttxt = '';
            _.each(data, function(datarow){
              var txt = '{';
              var firstrow = true;
              for(var key in datarow){
                if(columns && !_.includes(columns, key)) continue;
                if(!firstrow) txt += ',';
                txt += ' '+JSON.stringify(key)+': '+JSON.stringify(datarow[key]);
                firstrow = false;
              }
              txt += ' },\n';
              rslttxt += txt;
            });
            res.end(rslttxt);
          }
          else {
            res.end(JSON.stringify({ _success: 1, data: data }));
          }
        });
      }
      else { Helper.GenError(req, res, -9, 'Action not supported'); return; }
      
      return;
    }

    return next();
  };

  return exports;
};
