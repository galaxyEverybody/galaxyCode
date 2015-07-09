// onMouseover...
function setHover(id_number)
{
  var trNode = document.getElementById('tr'+id_number);
  for ( var i = 0; i < trNode.childNodes.length ; i++ )
  {
    if (trNode.childNodes[i].nodeType == 1)
    {
      if (trNode.childNodes[i].className == classStandard)
      {
        trNode.childNodes[i].className = classStandardhover;
      }
      else if (trNode.childNodes[i].className == classNumber)
      {
        trNode.childNodes[i].className = classNumberhover;
      }
      else if (trNode.childNodes[i].className == classStandardcompleted)
      {
        trNode.childNodes[i].className = classStandardhovercompleted;
      }
      else if (trNode.childNodes[i].className == classNumbercompleted)
      {
        trNode.childNodes[i].className = classNumberhovercompleted;
      }
    }
  }
}

// onMouseout ...
function setNormal(id_number)
{
  var trNode = document.getElementById('tr'+id_number);
  for ( var i = 0; i < trNode.childNodes.length ; i++ )
  {
    if (trNode.childNodes[i].nodeType == 1)
    {
      if (trNode.childNodes[i].className == classStandardhover)
      {
        trNode.childNodes[i].className = classStandard;
      }
      else if (trNode.childNodes[i].className == classNumberhover)
      {
        trNode.childNodes[i].className = classNumber;
      }
      else if (trNode.childNodes[i].className == classStandardhovercompleted)
      {
        trNode.childNodes[i].className = classStandardcompleted;
      }
      else if (trNode.childNodes[i].className == classNumberhovercompleted)
      {
        trNode.childNodes[i].className = classNumbercompleted;
      }
    }
  }
}

// Switching between completed and active ToDo's
function switchStatus(id_number)
{
  var trNode = document.getElementById('tr'+id_number);
  for ( var i = 0; i < trNode.childNodes.length ; i++ )
  {
    if (trNode.childNodes[i].nodeType == 1)
    {
      // For unmarked cells
      if (trNode.childNodes[i].className == classStandardhover)
      {
        trNode.childNodes[i].className = classStandardhovercompleted;
      }
      else if (trNode.childNodes[i].className == classNumberhover)
      {
        trNode.childNodes[i].className = classNumberhovercompleted;
      }
      else if (trNode.childNodes[i].className == classStandardhovercompleted)
      {
        trNode.childNodes[i].className = classStandardhover;
      }
      else if (trNode.childNodes[i].className == classNumberhovercompleted)
      {
        trNode.childNodes[i].className = classNumberhover;
      }
      // For marked cells
      else if (trNode.childNodes[i].className == classSelnumberstandard)
      {
        trNode.childNodes[i].className = classSelnumbercompleted;
      }
      else if (trNode.childNodes[i].className == classSelnumbercompleted)
      {
        trNode.childNodes[i].className = classSelnumberstandard;
      }
      else if (trNode.childNodes[i].className == classSelstandard)
      {
        trNode.childNodes[i].className = classSelcompleted;
      }
      else if (trNode.childNodes[i].className == classSelcompleted)
      {
        trNode.childNodes[i].className = classSelstandard;
      }
    }
  }
}

// Selected a row
function markThis(id_number)
{
  if (!document.getElementById('tr'+id_number)) return true;
  var trNode = document.getElementById('tr'+id_number);
  for ( var i = 0; i < trNode.childNodes.length ; i++ )
  {
    if (trNode.childNodes[i].nodeType == 1)
    {
      // For marked rows break
      if (trNode.childNodes[i].className.match(/^sel/)) break;

      if (trNode.childNodes[i].className == classStandardhover || trNode.childNodes[i].className == classStandard)
      {
        trNode.childNodes[i].className = classSelstandard;
      }
      else if (trNode.childNodes[i].className == classNumberhover || trNode.childNodes[i].className == classNumber)
      {
        trNode.childNodes[i].className = classSelnumberstandard;
      }
      else if (trNode.childNodes[i].className == classStandardhovercompleted || trNode.childNodes[i].className == classStandardcompleted)
      {
        trNode.childNodes[i].className = classSelcompleted;
      }
      else if (trNode.childNodes[i].className == classNumberhovercompleted || trNode.childNodes[i].className == classNumbercompleted)
      {
        trNode.childNodes[i].className = classSelnumbercompleted;
      }
    }
  }
  unmarkAll(id_number);
}

// Privat function for markThis()
function unmarkAll(id_number)
{
  var tableNode = document.getElementById('myTable');
  var tbody = 0;
  for ( var i = 0; i < tableNode.childNodes.length; i++ )
  {
    if (tableNode.childNodes[i].nodeType == 1 && tableNode.childNodes[i].nodeName == 'TBODY')
    {
      tbody = 1;
      var parentNode = tableNode.childNodes[i];
      break;
    }
  }

  if (tbody == 0)
  {
    var parentNode = tableNode;
  }

  for ( var i = 0; i < parentNode.childNodes.length ; i++ )
  {
    //  break for merket rows
    if (parentNode.childNodes[i].nodeType == 1 && parentNode.childNodes[i].id == 'tr'+id_number)
        continue;
    if (parentNode.childNodes[i].nodeType == 1 && parentNode.childNodes[i].nodeName == 'TR')
    {
      var trNode = parentNode.childNodes[i];

      for ( var c = 0; c < trNode.childNodes.length; c++ )
      {
        if (trNode.childNodes[c].nodeType == 1)
        {

          if (!trNode.childNodes[c].className.match(/^sel/))
          {
              break;
          }

          if (trNode.childNodes[c].className == classSelstandard)
          {
            trNode.childNodes[c].className = classStandard;
          }
          else if (trNode.childNodes[c].className == classSelnumberstandard)
          {
            trNode.childNodes[c].className = classNumber;
          }
          else if (trNode.childNodes[c].className == classSelcompleted)
          {
            trNode.childNodes[c].className = classStandardcompleted;
          }
          else if (trNode.childNodes[c].className == classSelnumbercompleted)
          {
            trNode.childNodes[c].className = classNumbercompleted;
          }
        }
      }
    }
  }
}

// Function for checkbox controlling
function setChecked(todo_id,remove)
{
    if(remove == 1)
    {
        document.getElementById('chkbox'+todo_id).checked = 0;
    }
    else
    {
        document.getElementById('chkbox'+todo_id).checked = 1;
    }
}

// Function for general menu navigation
function submitActionForm(actionValue)
{
    document.actionscontrol.action.value = actionValue;
    document.actionscontrol.submit();
}
