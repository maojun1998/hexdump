#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 0x10
#define MAX_WITH 0x20
#define MAX_TRING 0xFFFFFFFF
#define STRING_SIZE 8
#define ASSIC_0  0x30
#define ASSIC_9  0x39
#define ASSIC_A  0x41
#define ASSIC_F  0x46
#define buffer_size 4096
const char *copyright = "\nThe program was written by Hacking.\nReport bug or havea good ideal,please sent Email to maojun@whatsmath.cn\nYou can use the source code anytime.\n\n";

typedef struct _line {
        unsigned char line_data[MAX_LINE+1];
        struct _line *next;
}line;

line *scanf_queue(FILE *fp);

void show_format_text(line *p);

char *hex_to_string(long hex_number);

line *show_queue(line *p);

char *dw_hex_to_string(unsigned char hex_number);

void debug_show_queue(line *line);

void free_queue(line *queue);

int main(int argc, char *argv[])
{
    line *p;
        FILE *fp;
        unsigned char temp;
        if (argc < 2) {
                printf("%s", copyright);
                return 0;
        }

        if ((fp = fopen(argv[1], "rb+")) == NULL) {
                printf("No such file \"%s\" or open fail.\n", argv[1]);
                return 0;
        }

                p = scanf_queue(fp);
        show_format_text(p);
        free(p);

                /*scanf("%d", &temp);
                printf("%s\n", dw_hex_to_string(temp));
                */
        return 0;
}

void show_format_text(line *p)
{
        int optition;
        while (p != NULL) {
                p = show_queue(p);
                printf("\n\t\tPlease put ENTER KEY to continue¡­\n");
                scanf("%c", &optition);
                fflush(stdin);
                }
}

char *hex_to_string(long hex_number)
{
        char * queue =(char *)malloc(STRING_SIZE + 1);
        char i = 0;
        char temp;

        *(queue + STRING_SIZE) = 0;

        while (hex_number > 0) {
                if ((temp = hex_number % 0x10) > 9) {
                        *(queue + 8 - 1 - i) = temp -10 +ASSIC_A;
                } else {
                        *(queue + 8 - 1 - i) = temp - 0 +ASSIC_0;
                }
                hex_number = hex_number / 0x10;
                i++;

        }
        for (; i < 8; i++) {
                *(queue + 8 - 1 - i) = ASSIC_0;
        }

        return queue;
}

line *show_queue(line *p)
{
        line *temp = p;
        int i;
        static int j = 0;
		int h = 0;
        char *string;

        while (temp != NULL && h < MAX_WITH) {
                printf("%s", hex_to_string(j));
                printf("  ");
                //free_queue
                i = 0;
                while (i < MAX_LINE) {
                        string = dw_hex_to_string(temp->line_data[i++]);
                        putchar(string[0]);
                        putchar(string[1]);
                        putchar(' ');
                        free(string);
                }
                printf("  ");

                i = 0;
                while (i < MAX_LINE) {
                        if (temp->line_data[i] >= 0x20 && temp->line_data[i] <= 0x7E) {
                                putchar(temp->line_data[i]);
                        } else {
                                putchar('.');
                        }
                        i++;
                }
                printf("\n");
                temp = temp->next;
				h++;
                j+= 0x10;
        }

        p = temp;
        return p;

}

char *dw_hex_to_string(unsigned char hex_number)
{
        unsigned char temp;

        char *dw_string = (char *)malloc(3);
        dw_string[2] = '\0';

        temp = hex_number % 0x10;

        hex_number = hex_number  / 0x10;

        if (temp < 10) {
                dw_string[1] = temp - 0 + ASSIC_0;
        } else {
                dw_string[1] = temp - 10  +ASSIC_A;
        }
            temp = hex_number % 0x10;

        if (temp < 10) {
                dw_string[0] = temp - 0 + ASSIC_0;
        } else {
                dw_string[0] = temp - 10  +ASSIC_A;
        }
        return dw_string;

}
void free_queue(line *queue)
{
        line *temp = queue;
        do {
                queue = temp->next;
                free(temp);
                temp = queue;
        } while (temp != NULL);

}
void debug_show_queue(line *line)
{
                while(line  != NULL) {
                        printf("\n");
                        printf("&&");
                        printf("%s", (char *)&(line->line_data[0]));
                        printf("&&");
                        printf("\n");
                        line = line->next;
                }
}

line *scanf_queue(FILE *fp)
{
        int i = 0;
        int j;
        char one_bytes;
        line *re_queue,*temp_queue;

        re_queue = temp_queue = (line *)malloc(sizeof(line));
        temp_queue->line_data[MAX_LINE] = '\0';
        temp_queue->next = NULL;

        while (fread(&one_bytes, 1, 1, fp) == 1) {

                if (i == MAX_LINE) {
                        temp_queue = temp_queue->next = (line *)malloc(sizeof(line));
                        temp_queue->line_data[MAX_LINE] = '\0';
                        i = 0;
                }
                temp_queue->line_data[i++] = one_bytes;
        }
        for (j = i; j < MAX_LINE; j++) {
                temp_queue->line_data[j] = '.';
        }
        temp_queue->next = NULL;

        return re_queue;
}
