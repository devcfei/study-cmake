#include <stdlib.h>
#include <stdio.h>

#include <libxml/parser.h>
#include <libxml/tree.h>

int main(int argc, char const *argv[])
{
    xmlDocPtr doc;
    xmlNodePtr cur;

    doc = xmlReadFile(argv[1], NULL, 0);

    if (doc == NULL)
    {
        fprintf(stderr, "Document not parsed successfully. \n");
        return 1;
    }

    cur = xmlDocGetRootElement(doc);

    if (cur == NULL)
    {
        fprintf(stderr, "empty document\n");
        xmlFreeDoc(doc);
        return 1;
    }

    if (xmlStrcmp(cur->name, (const xmlChar *)"users"))
    {
        fprintf(stderr, "document of the wrong type, root node != story");
        xmlFreeDoc(doc);
        return 1;
    }

    return 0;
}
