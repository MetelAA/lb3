#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define max(A, B) ((A) > (B) ? (A) : (B))
#define DFLT_TEXT_SIZE 10
#define DFLT_SENT_SIZE 50

const char end_sent[] = "Dragon flew away!";
char target_str[] = "555\0";


int read_text(char ***text, int size);

int is_sent_end(char *a);

int add_sent_size(char **sent, int max_size);

int check_sent(char * sent);

int add_text_size(char ***text, int max_size);

int delete_555(char*** text, int size);

int is_letter(char a);

void freeMem(char ***text, int from, int to);

int main() {
    int size = DFLT_TEXT_SIZE;
    char **text = malloc(size * sizeof(char *));
    size = read_text(&text, size);
    int new_size = delete_555(&text, size);

    for(int i = 0; i < new_size; i++){
        for(int j = 0; (*text)[j]; j++){
            printf("%c", (*text)[j]);
        }
        text++;
        printf("\n");
    }

    printf("Количество предложений до %d и количество предложений после %d", (size-1), (new_size-1));
    freeMem(&text, 0, new_size);
    free(text);
}

int read_text(char ***global_text, int size) {
    int text_max_size = size;
    char** text = *global_text;
    int text_size = 0;


    char buffer;
    while (1) {
        int sent_size = 0;
        int sent_max_size = DFLT_SENT_SIZE;
        char* sent;
        sent = (char*) malloc(sent_max_size * sizeof(char));

        while(1){
            buffer = (char) getchar();
            if(sent_size == 0 && (buffer == ' ' || buffer == '\n' || buffer == '\t')){
                continue;
            }
            if((sent_size+1) >= sent_max_size){
                sent_max_size = add_sent_size((&sent), sent_max_size);
            }
            sent[sent_size] = buffer;
            sent_size++;
            if(is_sent_end(&buffer)){
                sent[sent_size] = '\0';
                break;
            }
        }

        if((text_size+1) >= text_max_size){
            text_max_size = add_text_size(&(text), text_max_size);
        }
        text[text_size] = sent;
        text_size++;
        if(check_sent(sent)){
            break;
        }
    }

    (*global_text) = text;
    return text_size;
}

int is_sent_end(char *a) {
    if ((*a) == '.' || (*a) == ';' || (*a) == '!' || (*a) == '?')
        return 1;
    return 0;
}

int add_sent_size(char **sent, int max_size) {
    max_size = max_size * 3 / 2;
    char *newSent = realloc((*sent), max_size * sizeof(char));
    if(newSent == NULL){
        printf("Error when alloc mem for sent\n");
        return -1;
    }
    (*sent) = newSent;
    return max_size;
}

int add_text_size(char ***text, int max_size) {
    max_size = max_size * 3 / 2;
    char **new_text = realloc((*text), max_size*sizeof(char*));
    if(text == NULL){
        printf("Error when alloc mem for text\n");
        return -1;
    }
    (*text) = new_text;
    return max_size;
}

int check_sent(char *sent){
    int maxL = max(strlen(end_sent), strlen(sent));
    for(int i = 0; i < maxL; i++) {
        if (sent[i] != end_sent[i])
            return 0;
    }
    return 1;
}

int delete_555(char*** text, int size){
    int new_size = size;
    for(int i = 0; i < new_size; i++){
        char* sub_str_p = strstr((*text)[i], target_str);
        if(sub_str_p != NULL){
            if(( ((*text)[i] - sub_str_p) > 0 && is_letter(*(sub_str_p-1)) ) || ( (*(sub_str_p+3) != '\0' && is_letter(*(sub_str_p+3))) )){
                continue;
            }
            for(int j = i+1; j < new_size; j++){
                (*text)[j-1] = (*text)[j];
            }
            new_size--;
            i--;
        }
    }
    freeMem(text, new_size+1, size);
    return new_size;
}

int is_letter(char a){
    if((a >= 65 && a <= 90) || (a >= 97 && a <= 122)){
        return 1;
    }
    return 0;
}

void freeMem(char ***text, int from, int to){
    for(int i = from; i < to; i++){
        free((*text)[i]);
    }
}